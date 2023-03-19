#include <stdio.h>
#include <stdlib.h>
#include <ve_offload.h>
#include <string.h>
#include <unistd.h>
#include <sys/time.h>
#include <time.h>

double get_time() {
    struct timeval tv;
    gettimeofday(&tv, NULL);
    return tv.tv_sec + tv.tv_usec * 1e-6;
}

int main(int argc, char *argv[])
{
    long long array_number, array_size;
    int i, alloc_one, alloc_two;
    uint64_t ve_address_1, ve_address_2;
    double *vector_a, *vector_b, *vh_address_1, *vh_address_2;
    int write_value_a, write_value_b;
    double start_time, end_time, total_time;

    array_number = atoi(argv[1]);
    if (argc < 1)
    {
        printf("please check your array_number");
        exit(1);
    }
    //printf("your array_number value is %ld\n", array_number);

    array_size = array_number * sizeof(double);
    //printf("array number is %ld, array size is %ld\n", array_number, array_size);



    // creat a process on VE
    struct veo_proc_handle *proc = veo_proc_create(0);   // process handle is proc
    if (proc == NULL)
    {
        perror("VE process creation failed.");
        exit(1);
    }
    //printf("process created on VE\n");
    

    // load shared library on VE
    uint64_t shared_lib = veo_load_library(proc, "./kernel.so");  // library handle is shared_lib
    if(shared_lib == 0)
    {
        perror("can not load static library");
        exit(1);
    }
    //printf("veo shared library loaded\n");
    

    // creat ctx on VE
    struct veo_thr_ctxt * ctx = veo_context_open(proc);
    if(ctx == NULL)
    {
        perror("failed to creat a ctx on VE");
        exit(1);
    }
    //printf("ctx created on VE\n");


    //creat arguments of func() on VE
    struct veo_args * argument = veo_args_alloc();   // argument is argument
    alloc_one = veo_alloc_mem(proc, &ve_address_1, array_size); // allocate memory spaces on VE
    alloc_two = veo_alloc_mem(proc, &ve_address_2, array_size);
    if(alloc_two != 0 || alloc_one !=0)
    {
        perror("memory allocation failed");
        exit(1);
    }
    
    //printf("memory allocated on VE with address %x and %x  with size is %ld\n", ve_address_1, ve_address_2, array_size);
    

    // passing the argument on VE
    int set_1 = veo_args_set_i64(argument, 0, ve_address_1);
    int set_2 = veo_args_set_i64(argument, 1, ve_address_2);
    int set_3 = veo_args_set_i64(argument, 2, array_number);
    
    
    
    if( set_1 + set_2 + set_3 != 0)
    {
      perror("set argument failed");
      exit(1);
    }
    
    //printf("arguemnt passed to VE\n");


    //initial the array on VH
    vector_a = (double *)malloc(array_size);
    vector_b = (double *)malloc(array_size);
    for(i = 0; i<array_number; i++)
    {
        vector_a[i] = 3.14;
        vector_b[i] = 6.28;
    }
    // write intialized arrays into VE

    write_value_a = veo_write_mem(proc, ve_address_1, vector_a, array_size);
    write_value_b = veo_write_mem(proc, ve_address_2, vector_b, array_size);
    if(write_value_a != 0 || write_value_b != 0)
    {
      perror("write value failed \n");
      exit(1);
    }
    //printf(" line 115 write intilized arrays to VE has done\n");
    
    

    free(vector_a);
    free(vector_b);

 
    uint64_t reqid, retp;

    start_time = get_time();
    reqid = veo_call_async_by_name(ctx, shared_lib, "vector_add", argument);
    //printf("has called VE function\n");
     
    int wait = 0;
    veo_call_wait_result(ctx, reqid, &retp);
    end_time = get_time();
    //printf("VE result wait\n");
     

 
    vh_address_1 = (double *)malloc(array_size);
    vh_address_2 = (double *)malloc(array_size);
    uint64_t read_1, read_2;
    read_1 = veo_read_mem(proc, vh_address_1, ve_address_1, array_size);
    read_2 = veo_read_mem(proc, vh_address_2, ve_address_2, array_size);
    if(read_1 != 0 || read_2 != 0)
    {
      perror("read failed\n");
      exit(1);
    }
    //printf("VE memory read\n");
    
    

    for(i=0; i<array_number; i++)
    {
        //printf("No. %d, vector a is %lf, vector b is %lf\n",i, vh_address_1[i], vh_address_2[i]);
    }
    total_time = end_time - start_time;
    
    printf("%p;%p;%d;%lf;%lf\n", ve_address_1, ve_address_2, array_number, total_time,2 * array_number * sizeof(double) / total_time *1.0e-9);
    free(vh_address_2);
    free(vh_address_1);
    veo_args_free(argument);
    veo_context_close(ctx);
    veo_proc_destroy(proc);
    

    return 0;

}




