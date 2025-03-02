[OBSOLETE WRITEUP]

# Writeup

## Explanation

In this challenge, a file named `enc` is provided, along with a piece of code that appears to be written in Python at first glance.

Let's briefly explain the code:

```python
''.join([chr((ord(flag[i]) << 8) + ord(flag[i + 1])) for i in range(0, len(flag), 2)])
```

### Breaking Down the Code

1. **Looping Through the String:**
   ```python
   for i in range(0, len(flag), 2)
   ```
   - This loop iterates over the string `flag` in steps of 2, meaning it processes two characters at a time (`flag[i]` and `flag[i + 1]`).

2. **Character Conversion and Bit Manipulation:**
   ```python
   chr((ord(flag[i]) << 8) + ord(flag[i + 1]))
   ```
   - **`ord(flag[i])`**: Converts the character `flag[i]` into its corresponding integer value based on the ASCII (or Unicode) table.
   - **`ord(flag[i]) << 8`**: Shifts this integer value 8 bits to the left, effectively multiplying it by 256. This operation shifts the bits of the character to make room for the next character.
   - **`ord(flag[i + 1])`**: Converts the next character in the pair (`flag[i + 1]`) into its corresponding integer value.
   - **`(ord(flag[i]) << 8) + ord(flag[i + 1])`**: Combines the two integer values into one. The first character's value is shifted to the left (creating a 16-bit space), and then the second character's value is added, effectively merging the two characters into a single 16-bit integer.
   - **`chr(...)`**: Converts this 16-bit integer back into a single character in the Unicode space. This means that two characters from the original `flag` string are combined into a single new character.

3. **Joining the Resulting Characters:**
   ```python
   ''.join([...])
   ```
   - The list comprehension creates a list of these newly generated characters.
   - The `''.join([...])` method then concatenates these characters into a single string.

### Summary

This piece of code takes a string `flag` and processes it in pairs of characters. For each pair, it combines them into a single new character using bit manipulation. The final result is a new string that represents the original `flag` string in a compact, encoded form. 

This encoding technique could be used for creating a more compact representation of the string or for some form of encryption or obfuscation.

## Solution

To solve the challenge, we need to reverse the encoding process described above. The provided string in the challenge is:

```
灩捯䍔䙻ㄶ形楴獟楮獴㌴摟潦弸強㕤㐸㤸扽
```

### Reversing the Encoding Process

To retrieve the original `flag` string, we need to reverse the bit manipulation process:

1. **Loop through the Encoded String:**
   For each character in the encoded string, which represents a 16-bit integer, we need to extract the original two characters.

2. **Extracting the Two Characters:**
   For each 16-bit character in the encoded string:
   - **First Character (High 8 bits):** Shift the 16-bit integer 8 bits to the right to extract the high 8 bits.
   - **Second Character (Low 8 bits):** Apply a bitwise AND with `0xFF` to extract the low 8 bits.

3. **Convert Back to Characters:**
   Use the `chr()` function to convert these integer values back to their corresponding characters.

### Implementing the Decoding in Python

Here’s how you can implement the reverse operation:

```python
encoded_string = '灩捯䍔䙻ㄶ形楴獟楮獴㌴摟潦弸強㕤㐸㤸扽'

# Initialize an empty string for the flag
decoded_flag = ''

for char in encoded_string:
    # Get the 16-bit integer value of the character
    encoded_value = ord(char)
    
    # Extract the original two characters
    first_char = chr(encoded_value >> 8)  # High 8 bits
    second_char = chr(encoded_value & 0xFF)  # Low 8 bits
    
    # Append the decoded characters to the flag
    decoded_flag += first_char + second_char

# Print the decoded flag
print(decoded_flag)
```

### Result

Running the code above will reveal the original flag, as the decoding process reverses the bit manipulation and concatenation done during the encoding.

This process ensures that we recover the original string that was obfuscated using the provided Python code.
