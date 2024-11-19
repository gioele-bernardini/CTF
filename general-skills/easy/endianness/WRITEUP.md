[OBSOLETE WRITEUP]

# Solution

## Explanation

The challenge is straightforward. More details about the *little-endian* system can be found in the resources provided.
One thing to notice is that the program is searching for a pattern that does not include the conventional `\x` prefix, which usually denotes hexadecimal values.
The program is simply looking for a specific value, the exact one stored in memory according to the respective system's endianness.
