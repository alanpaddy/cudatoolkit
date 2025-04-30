#include <stdio.h>

__global__ void warp_sum() {
    int lane = threadIdx.x % 32;
    float val = lane;
    for (int offset = 16; offset > 0; offset /= 2)
        val += __shfl_down_sync(0xffffffff, val, offset);
    if (lane == 0)
        printf("Warp sum: %f\n", val);
}

int main() {
    warp_sum<<<1, 32>>>();
    cudaDeviceSynchronize();
    return 0;
}
