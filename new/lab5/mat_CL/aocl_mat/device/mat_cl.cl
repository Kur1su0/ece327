/*
char airplane_cl(char);

__kernel void airplane_kernel(global char* restrict A, global char* restrict state)

{
	state[0] = airplane_cl(A[0]);
	
}
*/


__kernel void kernel_add (global int* restrict _m1,global int* restrict _m2,global int* restrict _add){
	
	int i = get_global_id(0);
	_add[i] = _m1[i]+_m2[i];
	//printf("%i res=%i\n",i,_add[i]);
}



__kernel void kernel_mul (global int* restrict _add,global int* restrict _v,global int* restrict _mul, int size){
	
	int inner_r,c;
	
	int r = get_global_id(0);
	
	for(c=0;c<(size);c++){
	    for(inner_r=0;inner_r<1;inner_r++){
           _mul[r]+=_add[(r)*(size)+c]*_v[c];
	   }
	
	}
	
	
	
}
