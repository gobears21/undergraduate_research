#ifndef SYCL_INCLUDE_CL_SYCL_NEC_VE_KERNEL_HPP_
#define SYCL_INCLUDE_CL_SYCL_NEC_VE_KERNEL_HPP_

#include "CL/SYCL/nec/ve_info.hpp"
#include <sys/time.h>
#include <time.h>
#include <math.h>

#define BANK_NUMBER 16
#define CELL_SIZE 128

inline double get_time()
{
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return tv.tv_sec + tv.tv_usec * 1e-6;
}


double start, end, total;
unsigned long current_bank_id, optimal_bank_id, final_bank_id;

namespace cl::sycl::detail
{

  struct VEKernel : public Kernel
  {
    nec::VEProc proc;
    nec::VEContext ctx;

    nec::VEContext ctx_create(nec::VEProc proc)
    {
      struct veo_thr_ctxt *ctx = veo_context_open(proc.ve_proc);
      DEBUG_INFO("[VEContext] create ve context: {:#x}", (size_t)ctx);
      return nec::VEContext{ctx};
    }

    void free_ctx(nec::VEContext ctx)
    {
      DEBUG_INFO("[VEContext] release ve ctx: {:#x}", (size_t)ctx.ve_ctx);
      int rt = veo_context_close(ctx.ve_ctx);
      if (rt != veo_command_state::VEO_COMMAND_OK)
      {
        DEBUG_INFO("[VEContext] release ve ctx: {:#x} failed, return code: {}", (size_t)ctx.ve_ctx, rt);
        PRINT_ERR("[VEContext] release ve ctx failed");
      }
    }

    struct veo_args *create_ve_args()
    {
      struct veo_args *argp = veo_args_alloc();
      if (!argp)
      {
        throw nec::VEException("ve args return nullptr");
      }
      return argp;
    }

    VEKernel(const vector_class<KernelArg> &args, const string_class &kernel_name, const nec::VEProc &proc)
        : Kernel(args, kernel_name), proc(proc)
    {
      //std::cout << kernel_name << "\n" << std::endl;        // *********************************** modified ****************************************
      ctx = ctx_create(proc);
    }

    void set_arg_for_range(struct veo_args *argp, const range<1> &r)
    {
      int index = args.size();
      veo_args_set_i64(argp, index, r.size());
      veo_args_set_i64(argp, index + 1, 1);
    }

    vector_class<uint64_t> copy_in(struct veo_args *argp)
    {
      vector_class<uint64_t> ve_addr_list;

      for (int i = 0; i < args.size(); i++)
      {
        KernelArg arg = args[i];
        size_t size_in_byte = arg.container->get_size();

        uint64_t ve_addr_int;
        int rt = veo_alloc_mem(proc.ve_proc, &ve_addr_int, size_in_byte /**/ + (uint64_t)(BANK_NUMBER * CELL_SIZE) /**/); // mem buffer is allocated, stored in the list

        /********************************************modified *******************
       * in abc 
       * 1. calculate the address, and find the bank
       * 2. assign to different bank
       * 
       * 
       * 
       * 
       * *******************************/
       //find the current bank id
        current_bank_id = (unsigned long)( ve_addr_int/CELL_SIZE ) % BANK_NUMBER ;
        // calculate the optimal bank id
        if (i == 0)
        {
          optimal_bank_id = 0;
          //printf("array %d id should be %d\n",i,optimal_bank_id);
        }
        else
        {
          long numerator = BANK_NUMBER * (2*(i % (long)pow(2, log2(i)))+1);
          long denominator = pow(2, log2(i)+1);
          optimal_bank_id = (unsigned long) (numerator/denominator);
          //printf("array %d id should be %d\n", i, optimal_bank_id);
        }

        //calculate the padding
        unsigned long cell_offset = 0;
        //cell_offset = ve_addr_int % CELL_SIZE;
        unsigned long padding;
        if (current_bank_id > optimal_bank_id)
        {
          //fprintf(stderr,"\ncase 1 %d %lu %lu %lu %lu\n",i, BANK_NUMBER, cell_offset, current_bank_id, optimal_bank_id);
          padding = cell_offset + (BANK_NUMBER - current_bank_id + optimal_bank_id) * CELL_SIZE;
          //printf("padding is %lu\n", padding);
          //fflush(stdout);
        }
        else
        {
          //fprintf(stderr,"\ncase 2 %d %lu %lu %lu %lu\n",i, BANK_NUMBER, cell_offset, current_bank_id, optimal_bank_id);
          padding = cell_offset + (optimal_bank_id - current_bank_id) * CELL_SIZE;
          //printf("padding is %lu\n", padding);
          //fflush(stdout);
        }
        
        if (rt != veo_command_state::VEO_COMMAND_OK)
        {
          DEBUG_INFO("[VEProc] allocate VE memory size: {} failed, return code: {}", size_in_byte, rt);
          PRINT_ERR("[VEProc] allocate VE memory failed");
          throw nec::VEException("VE allocate return error");
        }
        ve_addr_list.push_back(ve_addr_int); // the original address with odd number storage

        // how to find the input number (the input size already known, how to find the input type) ??
        ve_addr_int = ve_addr_int + padding + i ; //

        ve_addr_list.push_back(ve_addr_int); // pushed in the list, before this line, add offset
        // find the final bank_id which pushed to the list
        final_bank_id = (unsigned long)( ve_addr_int/CELL_SIZE ) % BANK_NUMBER ;
          
          
        //fprintf(stderr, "array %d; initial address %lu; current bank %lu; cell offset is %lu; optimal bank %lu; final bank %lu; padding is %lu;\n", i, ve_addr_list[2 * i + 1], current_bank_id, cell_offset, optimal_bank_id, final_bank_id, padding);
        DEBUG_INFO("[VEKernel] allocate ve memory, size: {}, ve address: {:#x}",
                   size_in_byte,
                   ve_addr_int);

        if (arg.mode != access::mode::write)
        {
          DEBUG_INFO("[VEKernel] do copy to ve memory for arg, device address: {:#x}, size: {}, host address: {:#x}",
                     (size_t)ve_addr_int,
                     size_in_byte,
                     (size_t)arg.container->get_data_ptr());
          rt = veo_write_mem(proc.ve_proc, ve_addr_int, arg.container->get_data_ptr(), size_in_byte);
          if (rt != veo_command_state::VEO_COMMAND_OK)
          {
            DEBUG_INFO("[VEProc] copy to ve memory failed, size: {}, return code: {}", size_in_byte, rt);
            PRINT_ERR("[VEProc] copy to ve memory failed");
            throw nec::VEException("VE copy return error");
          }
        }
        veo_args_set_i64(argp, i, ve_addr_int); //decided the address given to the kernal, add offset before caling this (new address also used)
      }
      //fprintf(stderr,"copy_in success\n");
      return ve_addr_list;
    }

    void copy_out(vector_class<uint64_t> ve_addr_list)
    {
      for (int i = 0; i < args.size(); i++)
      {
        KernelArg arg = args[i];
        size_t size_in_byte = arg.container->get_size();
        uint64_t device_ptr = ve_addr_list[2 * i + 1]; // where padded initial addres is pushed
        if (arg.mode != access::mode::read)
        {
          DEBUG_INFO("[VEKernel] copy from ve memory, device address: {:#x}, size: {}, host address: {:#x}",
                     (size_t)device_ptr,
                     size_in_byte,
                     (size_t)arg.container->get_data_ptr());
          // do copy
          int rt = veo_read_mem(proc.ve_proc, arg.container->get_data_ptr(), device_ptr, size_in_byte);
          if (rt != veo_command_state::VEO_COMMAND_OK)
          {
            DEBUG_INFO("[VEProc] copy from ve memory failed, size: {}, return code: {}", size_in_byte, rt);
            PRINT_ERR("[VEProc] copy from ve memory failed");
            throw nec::VEException("VE copy return error");
          }
        }
        int rt = veo_free_mem(proc.ve_proc, ve_addr_list[i * 2]);
        if (rt != veo_command_state::VEO_COMMAND_OK)
        {
          DEBUG_INFO("[VEProc] free ve memory failed, size: {}, return code: {}", size_in_byte, rt);
          PRINT_ERR("[VEProc] free ve memory failed");
          throw nec::VEException("VE free memory return error");
        }
      }
    }

    void single_task() override
    {
      DEBUG_INFO("[VEKernel] single task: {}", kernel_name);

      //std::cout << kernel_name << "from debug" << std::endl;        // *********************************** modified ****************************************

      veo_args *argp = create_ve_args();
      DEBUG_INFO("[VEKernel] create ve args: {:#x}", (size_t)argp);

      try
      {

        vector_class<uint64_t> ve_addr_list = copy_in(argp);
        DEBUG_INFO("[VEKernel] invoke ve func: {}", kernel_name);
        uint64_t id = veo_call_async_by_name(ctx.ve_ctx, proc.handle, kernel_name.c_str(), argp);
        uint64_t ret_val;
        veo_call_wait_result(ctx.ve_ctx, id, &ret_val);
        DEBUG_INFO("[VEKernel] ve func finished, id: {}, ret val: {}", id, ret_val);
        copy_out(ve_addr_list);
      }
      catch (nec::VEException &e)
      {
        std::cerr << "[VEKernel] kernel invoke failed, error message: " << e.what() << std::endl;
      }

      veo_args_free(argp);
    }
    void parallel_for(const range<1> &r) override
    {
      DEBUG_INFO("[VEKernel] parallel for 1d {} with range: {}", kernel_name, r.size());

      veo_args *argp = create_ve_args();
      DEBUG_INFO("[VEKernel] create ve args: {:#x}", (size_t)argp);

      try
      {
        vector_class<uint64_t> ve_addr_list = copy_in(argp);
        DEBUG_INFO("[VEKernel] invoke ve func: {}", kernel_name);
        set_arg_for_range(argp, r);

        start = get_time(); // where start time get record

        uint64_t id = veo_call_async_by_name(ctx.ve_ctx, proc.handle, kernel_name.c_str(), argp);
        uint64_t ret_val;
        veo_call_wait_result(ctx.ve_ctx, id, &ret_val);

        end = get_time(); // where end time get record
        total = end - start;

        printf("header feil time is %lf\n", total);

        DEBUG_INFO("[VEKernel] ve func finished, id: {}, ret val: {}", id, ret_val);
        copy_out(ve_addr_list);
      }
      catch (nec::VEException &e)
      {
        std::cerr << "[VEKernel] kernel invoke failed, error message: " << e.what() << std::endl;
      }

      veo_args_free(argp);
    }
    void parallel_for(const range<2> &r) override
    {
      DEBUG_INFO("[VEKernel] parallel_for 2d");
    }
    void parallel_for(const range<3> &r) override
    {
      DEBUG_INFO("[VEKernel] parallel_for 3d");
    }

    virtual ~VEKernel()
    {
      free_ctx(ctx);
    }
  };

}

#endif //SYCL_INCLUDE_CL_SYCL_NEC_VE_KERNEL_HPP_

//ve_addr_int = malloc(size_in_byte + BANK_NUMBER * CELL_SIZE);

//padding = cell_offset + (BANK_NUMBER - current_bank_id + optimal_bank_id) * CELL_SIZE;
//optimal_address = ve_addr_init + padding / sizeof(T) + i