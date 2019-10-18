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
cl_kernel kernel; 
cl_mem output_buf; 
cl_mem input_buf;

// Problem data.
int N; // problem size
char input_a; 
char *output;
char ref_output;
bool test;

// Function prototypes
bool init_opencl();
void init_problem();
void run();
void cleanup();

char *input;

// Entry point.
int main(int argc, char **argv) {

  	// Initialize the problem data.
  	init_problem();

  	// Initialize OpenCL.
  	if(!init_opencl()) {
    		return -1;
  	}

  	// Run the kernel.
  	run();

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
  	std::string binary_file = getBoardBinaryFile("airplane_cl", *device);
  	//printf("Using AOCX: %s\n", binary_file.c_str());
  	program = createProgramFromBinary(context, binary_file.c_str(), device, num_devices);

  	// Build the program that was just created.
  	status = clBuildProgram(program, 0, NULL, "", NULL, NULL);
  	checkError(status, "Failed to build program");

  	// Command queue.
  	queue = clCreateCommandQueue(context, *device, CL_QUEUE_PROFILING_ENABLE, &status);
  	checkError(status, "Failed to create command queue");

  	// Kernel.
  	const char *kernel_name = "airplane_kernel";
  	kernel = clCreateKernel(program, kernel_name, &status);
  	checkError(status, "Failed to create kernel");

	//Input buffer.
	input_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, 
			sizeof(char), NULL, &status);
	checkError(status, "Failed to create buffer for input");

  	// Output buffer.
  	output_buf = clCreateBuffer(context, CL_MEM_WRITE_ONLY, 
        		sizeof(char), NULL, &status);
  	checkError(status, "Failed to create buffer for output");

  	return true;
}

//Initialize data for the problem.
void init_problem() {
	//Output is a single char, but might not be used here.
	output = (char*)malloc(sizeof(char));


	//Assuming default allocation of 51
	input = (char*)malloc(sizeof(char));	

}

void run() {
	int i;
  	cl_int status;

  	const double start_time = getCurrentTimestamp();

  	// Launch the problem for each device.
  	cl_event kernel_event;
  	cl_event finish_event;
	cl_event write_event;

	// Set kernel arguments.
  	unsigned argi = 0;
 	status = clSetKernelArg(kernel, argi++, sizeof(cl_mem), &input_buf);
  	checkError(status, "Failed to set argument %d", argi - 1);
  	status = clSetKernelArg(kernel, argi++, sizeof(cl_mem), &output_buf);
	checkError(status, "Failed to set argument %d", argi - 1);

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

	char last_input = '0';	
	printf("You will enter either:\n\t1 for smooth\n\t2 for alt_25k\n\t4 for alt_10k\n\t0 if no signals set\n"
	       "Enter a q to quit.\n");
		
	while(last_input != 'q'){
	
		last_input = getchar();
		getchar();
		if(last_input != '0' && last_input != '1' && last_input != '2' &&
		   last_input != '4' && last_input != 'q'){
			printf("Please enter only '0', '1', '2', '4', or 'q'\n");
		}else{
			if(last_input == '1' || last_input == '0' || last_input == '2' 
			    || last_input == '4'){
				last_input -= 48;
				input[0] = last_input;				
		
			
				//Write this argument to a buffer.
				status = clEnqueueWriteBuffer(queue, input_buf, CL_FALSE,
						0, sizeof(char), input, 0, NULL, &write_event);
				checkError(status, "Failed to write input buffer");

				const size_t global_work_size = 1;
				//printf("Launching for device %d (%d elements)\n", 0, global_work_size);
				status = clEnqueueNDRangeKernel(queue, kernel, 1, NULL,
					&global_work_size, NULL, 1, &write_event, &kernel_event);
				checkError(status, "Failed to launch kernel");

				clWaitForEvents(num_devices, &kernel_event);
			  
				// Read the result. This the final operation.
				status = clEnqueueReadBuffer(queue, output_buf, CL_FALSE,
					0, sizeof(char), output, 1, &kernel_event, &finish_event);


				// Wait for all devices to finish.
				clWaitForEvents(num_devices, &finish_event);

				const double end_time = getCurrentTimestamp();
				
				printf("Indicators: ");
				switch(output[0]){
					case 0:
						printf("- -\n");
						break;
					case 1:
						printf("- No Electronics\n");
						break;
					case 2:
						printf("Fasten Seatbelt -\n");
						break;
					case 3:
						printf("Fasten Seatbelt No Electronics\n");
						break;
					default:
						printf("Flying yay!\n");
						break;
				}
			}
		}
	}

	// Wall-clock time taken.
 	//printf("\nTime: %0.3f ms\n", (end_time - start_time) * 1e3);

	// Get kernel times using the OpenCL event profiling API.
  	cl_ulong time_ns = getStartEndTime(kernel_event);
	//printf("Kernel time (device 0): %0.3f ms\n", double(time_ns) * 1e-6);i
	
	// Release all events.
  	clReleaseEvent(kernel_event);
	clReleaseEvent(finish_event);

}

// Free the resources allocated during initialization
void cleanup() {
  	if(kernel) {
    		clReleaseKernel(kernel);
  	}
  	if(queue) {
      		clReleaseCommandQueue(queue);
  	}

  	if(output_buf) {
      		clReleaseMemObject(output_buf);
  	}
  

  	if(program) {
    		clReleaseProgram(program);
  	}
  	if(context) {
    		clReleaseContext(context);
  	}
}

