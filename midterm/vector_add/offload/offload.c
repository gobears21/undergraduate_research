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
    int i;
    long long input,input_size;
    double start_time, end_time, total_time = 0;
    double *vector_a, *vector_b;

    if(argc < 1){
    printf("USAGE: ./a.out <ARRAY SIZE>\n");
    exit(1);
    }
  
    input = atoi(argv[1]);    
    input_size = input*sizeof(double);   // try int first
    //printf("the input size is %ld the input value is %d \n", input_size, input);
    
    // 创建handle    step 1 creat process on VE
    struct veo_proc_handle *proc = veo_proc_create(0);
    if (proc == NULL) {
        perror("veo_proc_create\n");
        exit(1);
    }
    //加载ve动态库    step 2, load shared library on VE
    uint64_t so_lib = veo_load_library(proc, "./kernel.so");
    if(so_lib == 0){
        perror("load lib\n");
        exit(1);
    }
    //打开上下文   step 3, create thread on VE
    struct veo_thr_ctxt *ctx = veo_context_open(proc);
    if (ctx == NULL) {
        perror("open context\n");
        exit(1);
    }

    uint64_t retval;   // step4 create arguments of function of VH
    int ret_1, ret_2, ret_3;

    //创建参数列表
    struct veo_args *argp = veo_args_alloc();

    int64_t ve_address_1, ve_address_2, ve_address_3;
    
    // intitial input array  向量初始化
    vector_a = (double *) malloc(input_size);
    vector_b = (double *) malloc(input_size);
    
    for(i=0; i<input; i++)
    {
      vector_a[i] = 3.14;
      vector_b[i] = 6.28;
    }
    
    // allocate input_size bytes on VE  
    ret_1 = veo_alloc_mem(proc, &ve_address_1, input_size);  // requested id 1: ret_1
    ret_2 = veo_alloc_mem(proc, &ve_address_2, input_size);
    ret_3 = veo_alloc_mem(proc, &ve_address_3, sizeof(long long));
    
    //printf("ve allocation resut ret_1 is %d, ret_2 is %d\n", ret_1, ret_2);
    
    if(ret_1 + ret_2 +ret_3 != 0){
        printf("allocate memory error ret_1=%d ret_2 = %d\n", ret_1, ret_2);
        return 0;
    }
    //passing arguemnt to VE
    int one = veo_args_set_i64(argp, 0, ve_address_1);   // the intial address of vector_a on VE is ve_address_1 
    int two = veo_args_set_i64(argp, 1, ve_address_2);   // the intial address of vector_b on VE is ve_address_2
    int three = veo_args_set_i64(argp, 2, ve_address_3);   // the size is the input_size    
    printf("pass value result %d %d %d\n", one, two, three);
    
    
    // write intitial value to VE
    int write_mem = veo_write_mem(proc, ve_address_1, vector_a, input_size);
    if(write_mem != 0)
    {
      perror("write in failed");
      exit(1);
    }
    printf(" write mem one value %d \n", write_mem);
    write_mem = veo_write_mem(proc, ve_address_2, vector_b, input_size);
    if(write_mem != 0)
    {
      perror("write in failed");
      exit(1);
    }      
    write_mem = veo_write_mem(proc, ve_address_3, &input, sizeof(long long));
    if(write_mem != 0)
    {
      perror("write in failed");
      exit(1);
    } 
    
    //printf(" wirte mem two value %d \n", write_mem);
    free(vector_a);
    free(vector_b);
    
    
    
    
    int64_t test_alloc, initial;
    uint64_t req, req_1, req_2;
    
 
    
    start_time = get_time();
    //calculation
    test_alloc = veo_get_sym(proc, so_lib, "test_alloc");
    //printf("find function test_alloc on VE success\n");    
    req = veo_call_async(ctx, test_alloc, argp);       // call function asynchronously   
    //printf("call function test_alloc calculate success");
    veo_call_wait_result(ctx, req, &retval);           // wait result
    //printf("VE calculation success\n");
    
    end_time = get_time();
    total_time = end_time - start_time;
  
    //需要在VH分配一块同样大小的空间接受这块内存        
    void *memory_1 = malloc(input_size);
    void *memory_2 = malloc(input_size);
    
    req_1 = veo_read_mem(proc, memory_1, ve_address_1, input_size);  // transfer content of VE ve_address_1 to VH address memory_1
    req_2 = veo_read_mem(proc, memory_2, ve_address_2, input_size);  // same as above
    
    if(req_1 < 0 || req_2 <0){
        printf("read memory failed req_1 = %d req_2 = %d\n", req_1, req_2);
        return 0;
    }

    //验证结果
    double *a = (double *)memory_1;
    double *b = (double *)memory_2;
    
    
    for(i = 0; i < input; i++)
    {
        printf("No. %d a is %lf        b is %lf \n", i, a[i], b[i]);
    }
    //printf("close status = %d\n", close_status);
    printf("%p;%p", ve_address_1, ve_address_2);
    printf(";%d;%lf;%lf\n", input, total_time,2 * input_size * sizeof(double) / total_time *1.0e-9); // input array size, time used, bandwidth in GB/s
    free(a);
    free(b);
    veo_args_free(argp);
    veo_context_close(ctx);
    veo_proc_destroy(proc);
    return 0;
}





