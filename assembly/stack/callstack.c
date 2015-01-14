#include <stdio.h>

int main(int argc, char **argv)
{
	printf("hello world\n");
	A(1) ;
	return 0;
}

void A( int tmp )
{
	if ( tmp<2 )
		B(1,2) ;
}

void B(int a, int b) {
	C() ;
}

void C() {
	A(2) ;
}