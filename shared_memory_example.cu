#include <stdio.h>

__global__ void shared_add(int *a, int *b, int *c, int n) {
    __shared__ int tmp[256];
    int i = threadIdx.x + blockIdx.x * blockDim.x;
    if (i < n) {
        tmp[threadIdx.x] = a[i] + b[i];
        c[i] = tmp[threadIdx.x];
    }
}

int main() {
    // Add init/malloc later
    return 0;
}
