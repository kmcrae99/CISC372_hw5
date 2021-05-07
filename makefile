all: image img_pthread img_omp
image:image.c image.h
	gcc -g image.c -o image -lm
img_pthread:img_pthread.c image.h
	gcc -g img_pthread.c -o img_pthread -lm -pthread
img_omp:img_omp.c image.h
	gcc -g img_omp.c -o img_omp -lm -fopenmp
clean:
	rm -f image output.png
