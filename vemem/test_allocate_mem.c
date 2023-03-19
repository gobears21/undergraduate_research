#include <stdio.h>
#include <stdlib.h>
#include <ve_offload.h>
#include <string.h>
#include <unistd.h>

/*
test allocate VE memory on VH
*/
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
