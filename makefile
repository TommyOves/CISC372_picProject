
#imagept:image_pt.c image.h
#	gcc –g –o image_pt.c image_pt -lpthread
#clean:
#	rm -f imagept output_pt.png

imageomp:image_omp.c image.h
	gcc −g −Wall −fopenmp −o imageomp image_omp.c
clean:
	rm -f imageomp output_omp.png
