# Flag Shop

## Solution

The challenge requires an understanding of the inner logic of how computer data is stored. Nothing in particular catches my eye while analyzing the code: no explicitly vulnerable function, no insecure libraries (such as `strcpy`), nothing similar.

One single clue is given for the challenge:

```
Two's complement can do some weird things when numbers get really big!
```

I may recall something about two's complement from my university lectures... but that definitely won't be enough :)

Let's look it up!

Integers, whether signed or unsigned, are represented in memory using the two's complement system. Two's complement was preferred over the standard approach (sign-magnitude) because there is only one way to represent zero, and addition and subtraction operations are the same for both positive and negative numbers. This uniformity allows the ALUs to require only one block.

The representation is similar to standard binary: positive numbers are represented as usual, while negative numbers are represented using the following formula:

$$
\text{Negative Number} = 2^n + x
$$

**Where:**

- \( n \) is the number of bits used to represent the integer.
- \( x \) is the negative value you want to represent.

**For Example:**

Let's consider a 4-bit system for simplicity.

To represent \(-1\):

$$
-1 = 2^4 + (-1) = 16 - 1 = 15
$$

In binary, \(15\) is represented as \([1111]\) in a 4-bit system.

This clear and consistent method of representing negative numbers ensures **efficient and reliable arithmetic operations** in computer systems, as only **one representation of zero** exists and a single **ALU** can perform **additions** and **subtractions** for both positive and negative numbers.

The key point is that due to the **circularity**, if we keep increasing until we **overflow**, we will get a negative number!

We have already used this property when checking the index for an array with *RISC-V assembly*: a negative number may appear as a large *unsigned* number (the initial 1 for the sign bit makes it large!), but how can we exploit this situation?

Basically, given this line of code:

```c
int total_cost = 0;
total_cost = 900 * number_flags;
```

We learn that the `total_cost` variable is an integer, represented with 32 bits in memory. If we can find a `number_flags` value that, when multiplied by 900, results in a large number, we may end up with a negative `total_cost`. Subtracting a negative value from our wallet would effectively add it instead of subtracting!

**How large must the number be to make that happen?**  
First, let's note that `scanf` requires an integer, so the input must be valid because it will assign the value directly to memory, and simply larger numbers won't fit.

**But can we exploit the subsequent multiplication?**  
The CPU can detect if there is an overflow... but here it is handled in that case. So, if we can input an arbitrarily large number greater than `INTEGER_MAX_VALUE / 900` and `INTEGER_MAX_VALUE`, we can make that happen.
Be careful though, if the number is too big, everything might wrap around once more and result in a positive number (it has "gone up" through all negative numbers and now is positive again!)

In particular, if we exceed the 32-bit limit, we will obtain a negative number that can be calculated with the following formula:

>-2³¹ + (product mod 2³¹ - 1) - 1

To find the minimum value of `number_flags` we must input to cause the overflow:

```
900 * number_flags > MAX_INT  # 2³¹ - 1
```

**How can we calculate the resulting negative `total_cost` we will get?**

```bash
>>> import math
>>> pow(2, 32)
4294967296
>>> pow(2, 31) - 1
2147483647
>>> max_int = pow(2, 31) - 1
>>> product = 2386164 * 900
>>> least_int = -max_int - 1
>>> print(least_int)
-2147483648
>>> least_int + (product - max_int)
-2147419695
>>> # 1 must be subtracted to get the expected total_cost given by the program
>>> # as once we land in least_int, one "turn" of moving up was *already* done!
>>> least_int + (product - max_int) - 1
-2147419696
```

That's it! We get *exactly* the same number as calculated by the program for the `total_cost` if we insert `2386164` (Could have been any number) as our input ;)

If the input exceeds the maximum value, a negative number will be stored in `total_cost` (loads of 1s in the beginning!), and since there is no condition to check it, once we check the balance, we will have a huge number! :)

