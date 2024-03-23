#include <stdio.h>
#include <stdlib.h>

const int FILE_LINES = 42;

int main() {
  FILE* file = NULL;
  file = fopen("temp.txt", "r");

  if (!file) {
    fprintf(stderr, "file could not be opened..\n");
    return(1);
  }

  int buffer[FILE_LINES];
  int i = 0;

  while (!feof(file)) {
    fscanf(file, "%d\n", buffer + i);
    i++;
  }

  for (i=0; i<FILE_LINES; i++) {
    printf("%c", buffer[i]);
  }
}
