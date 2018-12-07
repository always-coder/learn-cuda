run : gpu_info.o
	nvcc -o run gpu_info.o
gpu_info.o : gpu_info.cu
	nvcc -c gpu_info.cu
clean:
	rm *.o run	
