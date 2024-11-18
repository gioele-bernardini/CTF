# Pw Crack 5

## Solution

The challenge is quite straightforward, with nothing particularly complex required:  
One possible solution could involve writing a custom exploit to execute the script, intercepting the response (using something like `target.recvline()` with *pwntools* or a similar tool). However, the simplest approach here is to directly manipulate the source code.

The injected code simply adds a loop within the `password_check` function, brute-forcing it by trying every possible password from the dictionary.  
As simple as that!

