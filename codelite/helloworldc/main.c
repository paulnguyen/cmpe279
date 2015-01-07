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
		B() ;
}

void B() {
	C() ;
}

void C() {
	A(2) ;
}