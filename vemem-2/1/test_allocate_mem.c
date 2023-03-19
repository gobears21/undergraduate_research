#include <stdio.h>
#include <stdlib.h>
#include <ve_offload.h>
#include <string.h>
#include <unistd.h>


int main(int argc, char *argv[]) {

    int i, itr;
    long long input,input_size;
    double srt_time, end_time, total_time = 0;
    double s = 3.0;
    //double *vector_a, *vector_b;

    if(argc < 1){
    printf("USAGE: ./a.out <ARRAY SIZE>\n");
    exit(1);
    }
  
    input = atoi(argv[1]);    
    input_size = input*sizeof(double);   // try int first
    printf("the input size is %ld the input value is %d \n", input_size, input);

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
    int ret_1, ret_2;

    //创建参数列表
    struct veo_args *argp = veo_args_alloc();

    int64_t address_1, address_2;
    
    // allocate input_size bytes on VE  
    ret_1 = veo_alloc_mem(proc, &address_1, input_size);
    ret_2 = veo_alloc_mem(proc, &address_2, input_size);
    
    //printf("VE memory allocate success\n");
    
    if(ret_1 != 0 || ret_2 != 0){
        printf("allocate memory error ret_1=%d ret_2 = %d\n", ret_1, ret_2);
        return 0;
    }
    printf("the address of vector a and vector b are %p and %p \n", address_1, address_2);
    
    
    //第一个参数是这块内存地址
    veo_args_set_i64(argp, 0, address_1);   // the intial address of vector_a is address_1 
    veo_args_set_i64(argp, 1, address_2);   // the intial address of vector_b is address_2
    veo_args_set_i64(argp, 2, input);   // the size is the input_size
    
    printf("Pass value to VE success\n");

    int64_t test_alloc, initial;
    uint64_t req, req_1, req_2;
    
    
    
    // initial
    test_alloc = veo_get_sym(proc, so_lib, "initial");
    printf("find function initial on VE success\n");
    req = veo_call_async(ctx, initial, argp);
    printf("call function initial on VE success\n");
    veo_call_wait_result(ctx, req, &retval);           // wait result
    printf("initial on VE has done\n"); 
    
    
    
    //calculation
    test_alloc = veo_get_sym(proc, so_lib, "test_alloc");
    printf("find function test_alloc on VE success\n");    
    req = veo_call_async(ctx, test_alloc, argp);       // call function asynchronously   
    printf("call function test_alloc calculate success");
    veo_call_wait_result(ctx, req, &retval);           // wait result
    printf("VE calculation success\n");
  
    //需要在VH分配一块同样大小的空间接受这块内存        
    void *memory_1 = malloc(input_size);
    void *memory_2 = malloc(input_size);
    
    req_1 = veo_read_mem(proc, memory_1, address_1, input_size);  // transfer content of VE address_1 to VH address memory_1
    req_2 = veo_read_mem(proc, memory_2, address_2, input_size);  // same as above
    
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
    
    int close_status = veo_context_close(ctx);
    printf("close status = %d\n", close_status);
    free(a);
    free(b);
    return 0;
}




 
/*****************************   allocate memory on VH ******************************************

int main() {

    // 创建handle
    struct veo_proc_handle *proc = veo_proc_create(0);
    if (proc == NULL) {
        perror("veo_proc_create\n");
        exit(1);
    }
    //加载ve动态库
    uint64_t so_lib = veo_load_library(proc, "./kernel.so");
    if(so_lib == 0){
        perror("load lib\n");
        exit(1);
    }
    //打开上下文
    struct veo_thr_ctxt *ctx = veo_context_open(proc);
    if (ctx == NULL) {
        perror("open context\n");
        exit(1);
    }

uint64_t retval;
int ret;

    //创建参数列表
    struct veo_args *argp = veo_args_alloc();

    int64_t array_add;
    //分配12字节在VE
    ret = veo_alloc_mem(proc, &array_add, 12);
    if(ret != 0){
        printf("allocate memory error ret=%d\n", ret);
        return 0;
    }
    //第一个参数是这块内存地址
    veo_args_set_i64(argp, 0, array_add);
    //第二个参数是循环的次数
    veo_args_set_i64(argp, 1, 4);

    int64_t test_alloc = veo_get_sym(proc, so_lib, "test_alloc");
uint64_t req;
    req = veo_call_async(ctx, test_alloc, argp);
    veo_call_wait_result(ctx, req, &retval);

    //需要在VH分配一块同样大小的空间接受这块内存
    void* res = malloc(12);
    req = veo_read_mem(proc, res, array_add, 12);
    if(req < 0){
        printf("read memory failed req=%d\n", req);
        return 0;
    }

    //验证结果
    int* a = (int*)res;
    for(int i = 0; i < 3; i++){
        printf("%d ", a[i]);
    }
    printf("\n");

    int close_status = veo_context_close(ctx);
    printf("close status = %d\n", close_status);
    return 0;
}






******************************************************/








