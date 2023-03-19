#include <stdio.h>
#include <iostream>
#include <malloc.h>
#include <sys/time.h>
#include <time.h>

using namespace std;


int main(int argc, char *argv)
{
	int a,b,c;
	int *p,*q;
	a=12;
	string s;
	p=&a;
	cout << malloc(sizeof(char)) << endl;
	cout << malloc(sizeof(8)) << endl;
	//q=(int *)malloc(sizeof(int));
	cout << s << endl;
	cout << q <<"\t" << &q << "\t" << *q << endl;
	cout << a << "\t" << &a << endl;
	cout << p << "\t" << &p << "\t" << *p << endl;
}
