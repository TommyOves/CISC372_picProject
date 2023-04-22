image:image.c image.h
	gcc -g image.c -o image -lm

omp:image_omp.c image.h
	gcc -fopenmp -g image_omp.c -o image_omp -lm

pthreads:image_pt.c image.h
	gcc -g image_pt.c -o imagept -lm -pthread

darwin: image_pt.c image.h image_omp.c image.h
	gcc -g image_pt.c -o imagept -lm -lpthread -std=c99
	gcc -g image_omp.c -o imageomp -lm -fopenmp -std=c99

clean:
	rm -f output.png image_omp output_omp.png image_pt output_pt.png
