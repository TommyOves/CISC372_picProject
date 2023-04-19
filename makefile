# gcc –g –o hello_thread hello_thread.c -lpthread

image:image_pt.c image.h
	gcc -g image_pt.c -o image -lm
clean:
	rm -f image output.png
