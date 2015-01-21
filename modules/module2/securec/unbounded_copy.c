#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) 
{
   char prog_name[128];
   strcpy(prog_name, argv[0]);
	
   char arg1[80];
   strcpy(arg1, argv[1]) ;
   strcat( arg1, prog_name ) ;

   char buf[80] ;
   sprintf(buf, "%s", argv[2]) ;

}
