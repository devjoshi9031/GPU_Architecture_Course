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


    /*************************************************************************/
	 
}

void basicVecAdd( float *A,  float *B, float *C, int n)
{

    // Initialize thread block and kernel grid dimensions ---------------------

    const unsigned int BLOCK_SIZE = 256; 

    /*************************************************************************/
    // INSERT CODE HERE


    /*************************************************************************/
}

