CC=nc++-2.5.1
CFLAGS=-O3 -fopenmp #-report-all -proginf

all: a.out 

a.out: c++.cpp
	${CC} ${CFLAGS} c++.cpp

clean:
	rm -f a.out
