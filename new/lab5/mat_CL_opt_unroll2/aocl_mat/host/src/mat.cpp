#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>
#include "CL/opencl.h"
#include "AOCL_Utils.h"

using namespace aocl_utils;

// OpenCL runtime configuration
cl_platform_id platform = NULL;
unsigned num_devices = 0;
cl_device_id *device; 
cl_context context = NULL;
cl_command_queue queue; 
cl_program program = NULL;

cl_mem add_add_buf; 
cl_mem add_m1_buf;
cl_mem add_m2_buf;
cl_mem mul_add_buf;
cl_mem mul_v_buf;
cl_mem mul_mul_buf;
cl_mem mul_size_buf;



cl_kernel kernel_add;
cl_kernel kernel_mul; 

// Problem data.
int N; // problem size

char ref_output;
bool test;

// Function prototypes
bool init_opencl();
void init_problem();
void run();
void cleanup();

char *input;




#define MAXSIZE 100
#define UNIT 1000000000.0
void print_mat_vec(int is_vec, int* what);
void write_bin(int add_or_mul,int* what, char path[MAXSIZE]);
int* read_mat(char path[MAXSIZE],int* m);
int* read_vector(char path[MAXSIZE],int *m);
void add_opt();
void mul_opt();


int _verbos = 0;
int _random = 1;
int row,col;
int v_row;

int* m1=NULL;
int* m2=NULL;
int* v=NULL;
int* add=NULL;
int* mul=NULL;

char path_M1[MAXSIZE];
char path_M2[MAXSIZE];
char path_V[MAXSIZE];
char path_add[MAXSIZE];
char path_mul[MAXSIZE];




// Entry point.
int main(int argc, char *argv[]) {
        if(argc<6){
        printf("wrong args. expect:./lab5 M1 M2 V ADDOUT MULOUT\n");
        exit(1);
    }
    sprintf(path_M1,"%s",argv[1]);
    sprintf(path_M2,"%s",argv[2]);
    sprintf(path_V,"%s",argv[3]);
    sprintf(path_add,"%s",argv[4]);
    sprintf(path_mul,"%s",argv[5]);
    
    if(argc==7){
        char kw[MAXSIZE];
        sprintf(kw,"%s",argv[6]);
        if (strcmp(kw,"-v")==0 || strcmp(kw,"-V")==0){
            _verbos = 1;
            printf("Verbose Mode\n");
        }
    }
    
    if (_verbos==1){
        printf("M1 : %s\n",path_M1);
        printf("M2 : %s\n",path_M2);
        printf("V  : %s\n",path_V);
        printf("add: %s\n",path_add);
        printf("mul: %s\n",path_mul);
    }
  	// Initialize the problem data.
  	init_problem();
       
  	// Initialize OpenCL.
  	if(!init_opencl()) {
    		return -1;
  	}
       
  	// Run the kernel.
  	run();
        
          
      
    write_bin(1,add,path_add);
    write_bin(2,mul,path_mul);
    if(_verbos==1){ 
        printf("write to %s & %s\n",path_add,path_mul);
    }

  	// Free the resources allocated
  	cleanup();

  	return 0;
}

/////// HELPER FUNCTIONS ///////

// Initializes the OpenCL objects.
bool init_opencl() {
  	cl_int status;

  	//printf("Initializing OpenCL\n");

  	if(!setCwdToExeDir()) {
    		return false;
  	}

  	// Get the OpenCL platform.
  	platform = findPlatform("Altera");
  	if(platform == NULL) {
    		printf("ERROR: Unable to find Altera OpenCL platform.\n");
    		return false;
  	}

  	// Query the available OpenCL device.
  	device = getDevices(platform, CL_DEVICE_TYPE_ALL, &num_devices);
  	//printf("Platform: %s\n", getPlatformName(platform).c_str());
  	//printf("Using %d device(s)\n", num_devices);
  	//printf("  %s\n", getDeviceName(*device).c_str());

  	// Create the context.
  	context = clCreateContext(NULL, num_devices, device, NULL, NULL, &status);
  	checkError(status, "Failed to create context");

  	// Create the program for all device. Use the first device as the
  	// representative device (assuming all device are of the same type).
  	std::string binary_file = getBoardBinaryFile("mat_cl", *device);
  	//printf("Using AOCX: %s\n", binary_file.c_str());
  	
  	 //printf("--------------\n");
  	program = createProgramFromBinary(context, binary_file.c_str(), device, num_devices);
       //printf("--------------\n");
  	// Build the program that was just created.
  	status = clBuildProgram(program, 0, NULL, "", NULL, NULL);
  	checkError(status, "Failed to build program");
        
  	// Command queue.
  	queue = clCreateCommandQueue(context, *device, CL_QUEUE_PROFILING_ENABLE, &status);
  	checkError(status, "Failed to create command queue");
         
  	// Kernel.
  	const char *kernel_name_add = "kernel_add";
  	kernel_add = clCreateKernel(program, kernel_name_add, &status);
  	checkError(status, "Failed to create kernel add");
  	
  	const char *kernel_name_mul = "kernel_mul";
  	kernel_mul = clCreateKernel(program, kernel_name_mul, &status);
  	checkError(status, "Failed to create kernel mul");
       
  	
        //FOR ADD
	//input buffer M1.
	add_m1_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, 
			sizeof(int)*row*col, NULL, &status);
	checkError(status, "Failed to create buffer for M1 for ADD");
	
	
	//input buffer M2.
	add_m2_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, 
			sizeof(int)*row*col, NULL, &status);
	checkError(status, "Failed to create buffer for M2 for ADD");
	
	

  	// Output buffer add
  	add_add_buf = clCreateBuffer(context, CL_MEM_WRITE_ONLY, 
        		sizeof(int)*row*col, NULL, &status);
  	checkError(status, "Failed to create buffer for add result for ADD");
        
        
        //FOR MUL
        mul_add_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        		sizeof(int)*row*col, NULL, &status);
  	checkError(status, "Failed to create buffer for add buf for MUL");
        //vector
        mul_v_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        		sizeof(int)*row, NULL, &status);
  	checkError(status, "Failed to create buffer for v for Mul");
  	
        
        //mul
        mul_mul_buf = clCreateBuffer(context, CL_MEM_WRITE_ONLY, 
        		sizeof(int)*row, NULL, &status);
  	checkError(status, "Failed to create buffer for mul result for Mul");
        
        mul_size_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        		sizeof(int), NULL, &status);
  	checkError(status, "Failed to create buffer for size for Mul");
        
  	return true;
}

//Initialize data for the problem.
/* 
 * Alloc m1,m2,v,add & mul.
 *
 */
void init_problem() {
	
	
	//alloc mem for: M1,M2,V,add,mul
	 m1=read_mat(path_M1,m1);
    if(_verbos==1){ 
        printf("--------M1-------\n");
        print_mat_vec(0,m1);
        printf("-----------------\n");
    }
    m2=read_mat(path_M2,m2);
    if(_verbos==1){ 
        printf("--------M2-------\n");
        print_mat_vec(0,m2);
        printf("-----------------\n");
    }
    v=read_vector(path_V,v);
    
    if(_verbos==1){ 
        printf("---------V-------\n");
        print_mat_vec(1,v);
        printf("-----------------\n");
    }
    //add & mul
    add = (int*)calloc(row*col,sizeof(int));
    mul = (int*)calloc(row,sizeof(int));		
   
}

void run() {
	int i;
  	cl_int status;


  	// Launch the problem for each device.
  	cl_event kernel_event;
  	cl_event finish_event;
	cl_event write_event;

	// Set kernel arguments.
	//------------------------------------ADD----------------------------------------
  	
  	// Enqueue kernel.
	// Use a global work size corresponding to the number of elements to add
  	// for this device.
	// 
  	// We don't specify a local work size and let the runtime choose
	// (it'll choose to use one work-group with the same size as the global
 	// work-size).
	//
  	// Events are used to ensure that the kernel is not launched until
	// the writes to the input buffers have completed.

	
	
				//Write this argument to a buffer.
				status = clEnqueueWriteBuffer(queue, add_m1_buf, CL_FALSE,
						0, sizeof(int)*row*col, m1, 0, NULL, &write_event);
				checkError(status, "Failed to write m1 buffer");
				status = clEnqueueWriteBuffer(queue, add_m2_buf, CL_FALSE,
						0, sizeof(int)*row*col, m2, 0, NULL, &write_event);
				checkError(status, "Failed to write m2 buffer");
				
				
				
				
  	
				
	//printf("set argi\n");			
				
				unsigned argi = 0;
 	status = clSetKernelArg(kernel_add, argi++, sizeof(cl_mem), &add_m1_buf);
  	checkError(status, "Failed to set argument %d", argi - 1);
  	//printf("set m1 succ\n");
  	status = clSetKernelArg(kernel_add, argi++, sizeof(cl_mem), &add_m2_buf);
  	checkError(status, "Failed to set argument %d", argi - 1);
  	//printf("set m2 succ\n");
  	status = clSetKernelArg(kernel_add, argi++, sizeof(cl_mem), &add_add_buf);
  	checkError(status, "Failed to set argument %d", argi - 1);
  	//printf("set add succ\n");
  	
				
	const double start_time1=getCurrentTimestamp();			

				const size_t global_work_size = row*col;
				//printf("Launching for device %d (%d elements)\n", 0, global_work_size);
				status = clEnqueueNDRangeKernel(queue, kernel_add, 1, NULL,
					&global_work_size, NULL, 1, &write_event, &kernel_event);
				checkError(status, "Failed to launch kernel");

				clWaitForEvents(num_devices, &kernel_event);
			  
				// Read the result. This the final operation.
				status = clEnqueueReadBuffer(queue, add_add_buf, CL_FALSE,
					0, sizeof(int)*row*col, add, 1, &kernel_event, &finish_event);


				// Wait for all devices to finish.
				clWaitForEvents(num_devices, &finish_event);
  	const double end_time1=getCurrentTimestamp();
  	cl_ulong time_ns_add = getStartEndTime(kernel_event);
  	//clReleaseEvent(kernel_event);
	//clReleaseEvent(finish_event);

  	
  	//------------------------------------MUL----------------------------------------
  	
  	//MUL
  	
  	

  	// Enqueue kernel.
	// Use a global work size corresponding to the number of elements to add
  	// for this device.
	// 
  	// We don't specify a local work size and let the runtime choose
	// (it'll choose to use one work-group with the same size as the global
 	// work-size).
	//
  	// Events are used to ensure that the kernel is not launched until
	// the writes to the input buffers have completed.


         
	
				//Write this argument to a buffer.
				status = clEnqueueWriteBuffer(queue, mul_add_buf, CL_FALSE,
						0, sizeof(int)*row*col, add, 0, NULL, &write_event);
				checkError(status, "Failed to write add buffer");
				
				status = clEnqueueWriteBuffer(queue, mul_v_buf, CL_FALSE,
						0, sizeof(int)*row, v, 0, NULL, &write_event);
				checkError(status, "Failed to write v buffer");
				
				status = clEnqueueWriteBuffer(queue, mul_size_buf, CL_FALSE,
						0, sizeof(int), &col, 0, NULL, &write_event);
				checkError(status, "Failed to write size buffer");
				

       



	
				unsigned argi2 = 0;
 	status = clSetKernelArg(kernel_mul, argi2++, sizeof(cl_mem), &mul_add_buf);
  	checkError(status, "Failed to set argument %d", argi - 1);
  	status = clSetKernelArg(kernel_mul, argi2++, sizeof(cl_mem), &mul_v_buf);
  	checkError(status, "Failed to set argument %d", argi - 1);
  	status = clSetKernelArg(kernel_mul, argi2++, sizeof(cl_mem), &mul_mul_buf);
  	checkError(status, "Failed to set argument %d", argi - 1);
  	status = clSetKernelArg(kernel_mul, argi2++, sizeof(col), &col );
  	checkError(status, "Failed to set argument %d", argi - 1);
  	
				
	const double start_time2=getCurrentTimestamp();			
				

				const size_t global_work_size2 = row;
				//printf("Launching for device %d (%d elements)\n", 0, global_work_size);
				status = clEnqueueNDRangeKernel(queue, kernel_mul, 1, NULL,
					&global_work_size2, NULL, 1, &write_event, &kernel_event);
				checkError(status, "Failed to launch kernel");

				clWaitForEvents(num_devices, &kernel_event);
			  
				// Read the result. This the final operation.
				status = clEnqueueReadBuffer(queue, mul_mul_buf, CL_FALSE,
					0, sizeof(int)*col, mul, 1, &kernel_event, &finish_event);


				// Wait for all devices to finish.
				clWaitForEvents(num_devices, &finish_event);

	 
				
				
	

	// Wall-clock time taken.
 	//printf("\nTime: %0.3f ms\n", (end_time - start_time) * 1e3);
     const double end_time2=getCurrentTimestamp();			
	// Get kernel times using the OpenCL event profiling API.
  	cl_ulong time_ns_mul = getStartEndTime(kernel_event);
	
	// Release all events.
  	clReleaseEvent(kernel_event);
	clReleaseEvent(finish_event);
	
	  if(_verbos==1){ 
        printf("---------Add-------\n");
        print_mat_vec(0,add);
        printf("-----------------\n");
        }
        
        
        if(_verbos==1){ 
        printf("---------Mul-------\n");
        print_mat_vec(1,mul);
        printf("-----------------\n");
        }
        
	printf("size\t%ix%i\tadd\t%0.3f\tmul\t%0.3f\tPipe\t%0.3f\n",col,col,double(time_ns_add) * 1e-6, double(time_ns_mul) * 1e-6,((end_time2-start_time2)+(end_time1-start_time1))*1e3);
	
	
	
	
}

// Free the resources allocated during initialization
void cleanup() {
             
  	if(add_add_buf) {
      		clReleaseMemObject(add_add_buf);
  	}
  	if(add_m1_buf) {
      		clReleaseMemObject(add_m1_buf);
  	}
  	if(add_m2_buf) {
      		clReleaseMemObject(add_m2_buf);
  	}
  	
  	if(mul_add_buf) {
      		clReleaseMemObject(mul_add_buf);
  	}
  	if(mul_v_buf) {
      		clReleaseMemObject(mul_v_buf);
  	}
  	if(mul_mul_buf) {
      		clReleaseMemObject(mul_mul_buf);
  	}
    if(mul_size_buf){
            clReleaseMemObject(mul_size_buf);

    }
  	if(kernel_add) {
    		clReleaseKernel(kernel_add);
  	}
  	if(kernel_mul) {
    		clReleaseKernel(kernel_mul);
  	}
  	
  	
  	if(queue) {
      		clReleaseCommandQueue(queue);
  	}
  	if(program) {
    		clReleaseProgram(program);
  	}
  	if(context) {
    		clReleaseContext(context);
  	}
      

}



//------------NOT FOR CL----------------------
int* read_vector(char path[MAXSIZE], int* mat){
    int size=0;
    int val=0;
    FILE* fpt=fopen(path,"rb");
    if(fpt==NULL){
        printf("Not exist\n");
        exit(1);
    }
    fread(&size,sizeof(int),1,fpt);
    
    mat=(int*)calloc(size,sizeof(int));

    int i=0;
    for(i=0;i<size;i++){
        fread(&val,sizeof(int),1,fpt);
        mat[i]=val;
    }

    //fclose(fpt);
    return mat;


}

int* read_mat(char path[MAXSIZE],int* mat){
    int size=0;
    int val=0;
    FILE* fpt=fopen(path,"rb");
    if(fpt==NULL){
        printf("Not exist\n");
        exit(1);
    }
    fread(&size,sizeof(int),1,fpt);

    row = size; 
    col = size;
    
    mat=(int*)calloc(row*col,sizeof(int));

    int i=0;
    for(i=0;i<size*size;i++){
        fread(&val,sizeof(int),1,fpt);
        mat[i]=val;
    }

    fclose(fpt);
    return mat;
}
void print_mat_vec(int is_vec, int* what){
    int r,c;
    if(is_vec==0){
        for(r=0;r<row;r++){
            for(c=0;c<col;c++){
                printf("%4i ",what[r*col+c]);
            }
            printf("\n");
        }
    }else{
        for(r=0;r<row;r++){
            printf("%4i\n",what[r]);
        }

    }
}
void write_bin(int add_or_mul, int* what, char path[MAXSIZE]){
    //1 for add 2 for mul
    int size=add_or_mul==1?row*row:row;
    FILE *fpt=NULL;
    fpt=fopen(path,"wb");
    if(fpt==NULL){
        printf("file(%s) not exist!\n",path);
        exit(1);
    }
    fwrite(&size,sizeof(int),1,fpt);
    int i=0,val=0;
    for(i=0;i<size;i++){
        val=what[i];
        fwrite(&val,sizeof(int),1,fpt);
    }
    fclose(fpt);
}


