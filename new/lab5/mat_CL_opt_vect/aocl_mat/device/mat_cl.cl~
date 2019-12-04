
__attribute__((num_simd_work_items(4)))
__attribute__((num_compute_units(3)))
__attribute__((reqd_work_group_size(64,0,0)))



__kernel void kernel_add (global int* restrict _m1,global int* restrict _m2,global int* restrict _add){
	
	int i = get_global_id(0);
	_add[i] = _m1[i]+_m2[i];
	//printf("%i res=%i\n",i,_add[i]);
}



__kernel void kernel_mul (global int* restrict _add,global int* restrict _v,global int* restrict _mul, int size){
	
	int inner_r,c;
	int r = get_global_id(0);
	
    #pragma unroll 4
	for(c=0;c<(size);c++){
	    //#pragma unroll 1
        for(inner_r=0;inner_r<1;inner_r++){
	        _mul[r]+=_add[r*(size)+c]*_v[c];

	   }
	
	}
	
	
	
}
