all: basic-tutorial-1 basic-tutorial-2 basic-tutorial-3 basic-tutorial-4 basic-tutorial-6 basic-tutorial-7 

basic-tutorial-%:
	@echo "\nCompile $@"
	gcc $@.c -o $@ `pkg-config --cflags --libs gstreamer-1.0`

clean:
	echo "@=$@"
	rm -f basic-tutorial-? *.o
