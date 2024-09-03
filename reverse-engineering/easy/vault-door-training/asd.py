#!/usr/bin/env python3

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

