#include <stdio.h>

#define DELTA 7

int length(char* array) {
  int i = 0;
  while (array[i] != '\0')
    i++;

  return i;
}

void decode_string(char* array) {
  for (int i = 0; i < length(array); i++) {
    array[i] -= DELTA;
  }
}

int main() {
  char string[] = "wpjvJAM{jhlzhy_k3jy9wa3k_m0212758}";

  decode_string(string);
  printf("%s\n", string);

  return 0;
}

