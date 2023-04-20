omp:image_omp.c image.h
	gcc -fopenmp -g image_omp.c -o image_omp -lm

pthreads:image_pt.c image.h
	gcc -g image_pt.c -o imagept -lm -pthread

#darwin: image-pthread.c image-pthread.h image-openMP.c image.h
#	gcc -g image-pthread.c -o image_pthread -lm -lpthread -std=c99
#	gcc -g image_openMP.c -o image-openMP -lm -fopenmp -std=c99

clean:
	rm -f output.png image_omp output_omp.png image_pt output_pt.png
