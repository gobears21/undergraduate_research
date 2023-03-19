CC=nc++-2.5.1
CFLAGS= -fopenmp #-report-all -proginf -O3 

all: a.out 

a.out: main.cpp
	${CC} ${CFLAGS} main.cpp 

clean:
	rm -f a.out
