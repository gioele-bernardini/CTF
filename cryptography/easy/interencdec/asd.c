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
    if (array[i] >= 'a' && array[i] <= 'z') {
      // Subtract DELTA and add 26 to handle negative values, ensuring the result stays within the 0-25 range.
      // Adding 26 doesn't affect the outcome for positive values within the range, as the modulo operation
      // will return the same value (x + 26) % 26 == x when x is already between 0 and 25.
      array[i] = ((array[i] - 'a' - DELTA + 26) % 26) + 'a';
    } else if (array[i] >= 'A' && array[i] <= 'Z') {
      // Same logic applies for uppercase letters
      array[i] = ((array[i] - 'A' - DELTA + 26) % 26) + 'A';
    }
  }
}

int main() {
  char string[] = "wpjvJAM{jhlzhy_k3jy9wa3k_m0212758}";

  decode_string(string);
  printf("%s\n", string);

  return 0;
}

