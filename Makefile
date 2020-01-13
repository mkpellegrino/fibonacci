CPPFLAGS=-arch x86_64 -m64
DEBUG=-g -DDEBUG
OPT=-O3

BIN_DIR=./
LIB_DIR=./
LST_DIR=./

fib : fib.cpp
	g++ fib.cpp $(DEBUG) $(CPPFLAGS) -o $(BIN_DIR)fib-debug
	g++ fib.cpp $(OPT) $(CPPFLAGS) -o $(BIN_DIR)fib
	strip -no_uuid -A -u -S -X -N -x $(BIN_DIR)fib

clean :
	rm -fR $(LIB_DIR)*.o 
	rm $(BIN_DIR)fib
	rm $(BIN_DIR)fib-debug
	rm -fR $(BIN_DIR)fib-debug.dSYM 
