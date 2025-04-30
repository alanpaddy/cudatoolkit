#include <iostream>

__global__ void hello_kernel() {
    printf("Hello from thread [%d, %d]\n", threadIdx.x, blockIdx.x);
}

int main() {
    hello_kernel<<<2, 4>>>();
    cudaDeviceSynchronize();
    return 0;
}
