

#include <CL/sycl.hpp>
#include <iostream>
#include <unistd.h>

using namespace cl::sycl;
using namespace std;

REGISTER_KERNEL(vector_copy);  // kernel name  //code generator??
REGISTER_KERNEL(vector_add);
// ¾²Ì¬ÎÄ¼þ .o .so ¶¯Ì¬Á´½Ó¿â ¾²Ì¬Á´½Ó¿â 

int main() {
    
    int A[10]; 
    int B[10];
    
    for(int i = 0; i < 10; ++i) {
        A[i] = i;
    }

    queue cpu_q;

    range<1> r_a(10);
    buffer<int, 1> buffer_a(A, r_a);

    range<1> r_b(10);
    buffer<int, 1> buffer_b(B, r_b);

    cpu_q.submit([&](handler &cgh) {
        auto accessor_a = buffer_a.get_access<access::mode::read_write>(cgh);
        auto accessor_b = buffer_b.get_access<access::mode::read_write>(cgh);

        cgh.parallel_for<class vector_copy>(range<1>{10}, [=](id<1> idx) {
            accessor_b[idx] = accessor_a[idx];
        }); 

    });
    cpu_q.wait();

    cout << "A:\n";
    for(int i = 0; i < 10; ++i) {
        cout << A[i] << "   ";
    }
    cout << "\nB:\n";
    for(int i = 0; i < 10; ++i) {
        cout << B[i] << "   ";
    }
    cout << endl;

    ve_queue ve_q;
    int C[10];

    range<1> r_c(10);
    buffer<int, 1> buffer_c(C, r_c);

    ve_q.submit([&](handler &cgh) {  // ve_q ve off load 
        auto accessor_a = buffer_a.get_access<access::mode::read_write>(cgh);
        auto accessor_b = buffer_b.get_access<access::mode::read_write>(cgh);
        auto accessor_c = buffer_c.get_access<access::mode::read_write>(cgh);

        cgh.parallel_for<class vector_add>(range<1>{10}, [=](id<1> idx) {
            accessor_c[idx] = accessor_b[idx] + accessor_a[idx];
        }); 

    });   
    ve_q.wait();

    cout << "C:\n";
    for(int i = 0; i < 10; ++i) {
        cout << C[i] << "   ";
    }
    cout << endl;
    return 0;
}
