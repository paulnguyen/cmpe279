#include <stdio.h>
#include <stdlib.h>

char *gets(char *dest) {
    int c = getchar();
    char *p = dest;
    while (c != EOF && c != '\n') {
      *p++ = c;
      c = getchar();
    }
    *p = '\0';
    return dest;
}

int main() {
  char buffer[8] ;
  gets(buffer) ;
  return 0 ;
}

