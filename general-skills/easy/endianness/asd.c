#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char** argv) {
  if (argc != 2) {
    fprintf(stderr, "Usage: %s <word>\n", argv[0]);
    exit(1);
  }

  size_t len = strlen(argv[1]);

  // Big Endian
  for (size_t i = 0; i < len; i++) {
    printf("%02x", (unsigned char)argv[1][i]);
  }

  printf("\n\n");

  // Little Endian
  for (int i = (int)len - 1; i >= 0; i--) {
    printf("%02x", (unsigned char)argv[1][i]);
  }

  printf("\n");

  return 0;
}

