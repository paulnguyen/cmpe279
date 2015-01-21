#include <stdio.h>

void A( int tmp ) ;
void B( int a, int b ) ;
void C( ) ;

int main(int argc, char **argv)
{
  printf("hello world\n");
  A(1) ;
  return 0;
}

void A( int tmp )
{
   int x = 0 ;
   if ( tmp<2 )
      B(1,2) ;
}

void B(int a, int b) {
  C() ;
}

void C() {
  A(2) ;
}
