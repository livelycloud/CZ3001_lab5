#include<stdio.h>
__global__ void hello_GPU(){
    printf("Hello from GPU%d[%d]!\n", blockIdx.x, threadIdx.x);
}

int main(){

    hello_GPU<<<2, 5>>>();
    return 0;
}

