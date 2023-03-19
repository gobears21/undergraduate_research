#include <stdio.h>
#include <stdlib.h>
#include <ve_offload.h>
#include <string.h>
#include <unistd.h>

/*
test allocate VE memory on VH
*/
int main(int argc, char *argv[]) {

    long long input,input_size;
    //double srt_time, end_time, total_time = 0;
    double *vector_a, *vector_b;

    if(argc < 1){
    printf("USAGE: ./a.out <ARRAY SIZE>\n");
    exit(1);
    }

    input = atoi(argv[1]);
    input_size = input*sizeof(double);

    printf("the array size is %ld, the memory allocation size is %ld byte",input, input_size);


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

    int64_t array_add_1, array_add_2;   // change array_add to array_add_1

    ret = veo_alloc_mem(proc, &array_add_1 , input_size);  // 分配向量a内存
    if(ret != 0){
        printf("allocate first memory error ret=%d\n", ret);
        return 0;
    }

    ret = veo_alloc_mem(proc, &array_add_2 , input_size);  //分配向量b内存
        if(ret != 0){
        printf("allocate second memory error ret=%d\n", ret);
        return 0;
    }

    printf("memory allocatio has done on VE");



    //第一个参数是这块内存地址
    veo_args_set_i64(argp, 0, array_add_1);   //传递array_add 的值给第一个参数

    veo_args_set_i64(argp, 1, array_add_2);  // 传递array_add_2 的值给第二个参数

    veo_args_set_i64(argp,3,input);  // 传递array_size 给第三个参数

    int64_t test_alloc = veo_get_sym(proc, so_lib, "test_alloc");
    uint64_t req;
    req = veo_call_async(ctx, test_alloc, argp);
    veo_call_wait_result(ctx, req, &retval);

    //需要在VH分配两块同样大小的空间接受这块内存
    void* res_1 = malloc(input_size);
    void *res_2 = malloc(input_size);


    req = veo_read_mem(proc, res_1, array_add_1, input_size);
    if(req < 0){
        printf("read first VE memory failed req=%d\n", req);
        return 0;
    }

    req = veo_read_mem(proc, res_2, array_add_2, input_size);
    if(req < 0){
        printf("read second VE memory failed req=%d\n", req);
        return 0;
    }


    //验证结果
    int* a = (int*)res_1;
    int* b = (int*)res_2;

    for(int i = 0; i < input; i++){
        printf("a is %d b is %d \n", a[i], b[i]);
    }
    //printf("\n");


    free(a);
    free(b);

    int close_status = veo_context_close(ctx);
    printf("close status = %d\n", close_status);
    return 0;
}
