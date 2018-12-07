#include<stdio.h>
#include "cuda_runtime.h"

int main()
{
    int deviceCount;
    cudaGetDeviceCount(&deviceCount);
  
    printf("device count is: %d\n", deviceCount);

    for (int dev = 0; dev < deviceCount; dev++)
    {
    	cudaDeviceProp deviceProp;
	cudaGetDeviceProperties(&deviceProp, dev);

        printf("\ndevice name is %d %s:\n", dev, deviceProp.name);
        printf("total amount global memory is: %u bytes\n", deviceProp.totalGlobalMem);
        printf("total amount global memory is: %u M\n", deviceProp.totalGlobalMem / 1024);
        printf("total amount global memory is: %u G\n", deviceProp.totalGlobalMem / (1024*1024));
        printf("number of multiprocessor is: %d\n", deviceProp.multiProcessorCount);
        printf("max number of thread per block %d\n", deviceProp.maxThreadsPerBlock);
        printf("max size of each dimension %d, %d, %d \n",deviceProp.maxThreadsDim[0],
                    deviceProp.maxThreadsDim[1], deviceProp.maxThreadsDim[2]);

        printf("\n");	
    }
}
