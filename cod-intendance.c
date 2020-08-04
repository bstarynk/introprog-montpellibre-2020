/* fichier intendance.c */
#include <stdio.h> /* pour printf */
#include <stdlib.h> /* pour atoi */

extern long fact (int);
int main(int argc, char**argv) {
  for (int numarg = 1; numarg<argc; numarg++) {
    int n = atoi(argv[numarg]);
    printf("%ld\n", fact(n));
  }
  exit(EXIT_SUCCESS);
}
/* fin du fichier intendance.c */
