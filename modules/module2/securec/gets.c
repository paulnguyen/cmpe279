#include <stdio.h>
#include <stdlib.h>

int main() {
  get_y_or_n() ;
  return 0 ;
}

void get_y_or_n(void) {
    char response[8];
    puts("Continue? [y] n: ");
    gets(response);
    if (response[0] == 'n')
      exit(0);
    return;
}
