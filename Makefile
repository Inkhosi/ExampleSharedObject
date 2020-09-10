
# Compilation and linking stages need to be separated else it will expect the 
# main entry point not present in the shared object
libexample: src/libexample.cpp src/libexample.h
	mkdir -p bin
	# Compilation
	g++ -fPIC -c src/libexample.cpp -o bin/libexample.o
	# Linking as shared object
	g++ -shared -o bin/libexample.so bin/libexample.o

all:
	libexample

clean:
	rm -rf bin/
