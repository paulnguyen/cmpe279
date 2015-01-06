
#include <stdio.h>
#include <stdlib.h>

/*
 * 
 */
int main(int argc, char** argv) {

    printf("sizeof(int*) = %d\n", sizeof (int*));
    printf("sizeof(int) = %d\n", sizeof (int));
    printf("sizeof(int*)==sizeof(int) = %d\n", sizeof (int*) == sizeof (int));

    return (EXIT_SUCCESS);
}

