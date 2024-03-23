#include <stdio.h>
#include <stdlib.h>

void binaryToTeen(int n) {
  int number = n;

  int digits_number = 0;
  while(n) {
    n /= 2;
    digits_number++;
  }

  int result[digits_number];
  int i = 0;
  while(number) {
    result[i] = number % 2;
    number /= 2;
    i++;
  }

  int j;
  for (j=i-1; j>=0; j--) {
    printf("%d", result[j]);
  }
  printf("\n");
}

int main(int argc, char** argv) {
  if (argc != 2) {
    fprintf(stderr, "Usage: %s <number>\n", argv[0]);
    exit(1);
  }

  binaryToTeen(atoi(argv[1]));

  return 0;
}
