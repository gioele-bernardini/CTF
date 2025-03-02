[OBSOLETE WRITEUP]

# Writeup

## Explanation

The challenge itself is quite straight-forward. Given the 10 attempts and the range of 1000 possible numbers, it's clear that a *smart approach* is required to find the correct number efficiently.

The key to solving this is by using the **binary search algorithm**. Binary search works by dividing the range of possible numbers in half with each guess, based on the feedback of "higher" or "lower." This allows us to home in on the correct number in logarithmic time.

### Recap of the Algorithm in C

Here’s how the binary search algorithm works in C:

```c
#include <stdio.h>

int binary_search(int low, int high) {
  int attempts = 0;
  while (low <= high && attempts < 10) {
    int mid = (low + high) / 2;
    printf("Attempt %d: Guessing %d\n", attempts + 1, mid);
    fflush(stdout);  // In case this interacts with an external program

    // Simulating response from the system
    char response;
    scanf(" %c", &response);  // Read 'h' (higher), 'l' (lower), or 'c' (correct)

    if (response == 'c') {
      printf("Correct number found: %d\n", mid);
      return mid;
    } else if (response == 'h') {
      low = mid + 1;
    } else if (response == 'l') {
      high = mid - 1;
    }
    attempts++;
  }
  return -1;  // If we exhaust all attempts
}

int main() {
  int low = 1, high = 1000;
  int result = binary_search(low, high);
  if (result == -1) {
    printf("Failed to find the correct number.\n");
  }
  return 0;
}
```

### Analysis of the Complexity

The number of attempts (10) is not coincidental. It aligns perfectly with the logarithmic behavior of binary search. With each guess, the binary search cuts the range of possible numbers in half, and in the worst case, it requires around:

$$
\lceil \log_2(1000) \rceil \approx 10 \text{ attempts}
$$

Thus, using binary search allows us to efficiently find the number within the given constraints.

### Automating the Solution

To automate the guessing process and interact with the challenge program, we can use libraries such as **pexpect** or **pwntools** in Python, which are commonly used for automating interaction with remote servers in CTFs.

### Final Thoughts

This challenge was a great exercise in applying binary search to an interactive guessing game. The constraint of 10 attempts made it clear that the problem required a logarithmic approach to find the number efficiently. Whether using C for manual interaction or Python with libraries like `pexpect` or `pwntools` for automation, binary search is the optimal solution for this problem.
