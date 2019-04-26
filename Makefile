all:
	# build destination
	mkdir -p build;

	# generate HAL wrapper
	swig -ruby -c++ -outdir build matrix-hal-swig/matrix.i;	

	# generate Ruby library
	gcc -Wall -fPIC -c -lmatrix_creator_hal -std=gnu++11 \
	matrix-hal-swig/matrix.cpp \
	matrix-hal-swig/drivers/*.cpp \
	matrix-hal-swig/drivers/sensors/*.cpp \
	matrix-hal-swig/matrix_wrap.cxx \
	-I/usr/include/ruby-2.3.0 -I/usr/include/arm-linux-gnueabihf/ruby-2.3.0
	
	mv *.o build
	gcc -shared -lmatrix_creator_hal -std=gnu++11 build/*.o -o build/halSwig.so	

clean:
	# remove generated HAL wrapper
	rm matrix-hal-swig/matrix_wrap.cxx;
	sudo rm -r ./build
