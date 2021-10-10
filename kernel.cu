#include <stdio.h>

__global__ void VecAdd(int n, const float *A, const float *B, float* C) {

    /********************************************************************
     *
     * Compute C = A + B
     *   where A is a (1 * n) vector
     *   where B is a (1 * n) vector
     *   where C is a (1 * n) vector
     *
     ********************************************************************/
     
    /*************************************************************************/
    // INSERT CODE HERE
    int i = threadIdx.x + blockDim.x*blockIdx.x;				//Convert the 3 dimensional index to 1 dimension index for indexing 1D array.
    
    if(i<n)									// To limit the number of threads equal to 10,0000.
      C[i] = A[i] + B[i];							// Performing vector addition.
    return;
    /*************************************************************************/
	 
}

void basicVecAdd( float *A,  float *B, float *C, int n)
{

    // Initialize thread block and kernel grid dimensions 

    const unsigned int BLOCK_SIZE = 256; 

    /*************************************************************************/
    // INSERT CODE HERE
     dim3 dim_grid(((n-1)/BLOCK_SIZE)+1,1,1);					// Initializing the grid dimension using the ceiling function to get the number of blocks depending upon the total data.
     dim3 dim_block(BLOCK_SIZE*2,1,1);						// Initializing the number of threads in a block. As said in the lab1, 512 threads per block.
    VecAdd<<<dim_grid,dim_block>>>(n,A,B,C);					// Invoke the VecAdd function to be used by the GPU and perform vector addition.
    /*************************************************************************/
}

