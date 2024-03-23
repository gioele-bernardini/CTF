#!/usr/bin/env python3

def string_to_big_endian(s):
    # Converte la stringa in formato big endian
    big_endian = ''.join(format(ord(char), '02X') for char in s)
    return big_endian

def string_to_little_endian(s):
    # Converte la stringa in formato little endian
    little_endian = ''.join(format(ord(char), '02X') for char in reversed(s))
    return little_endian

def main():
    input_string = input("Inserisci la stringa da convertire: ")
    big_endian_result = string_to_big_endian(input_string)
    little_endian_result = string_to_little_endian(input_string)
    
    print("Big Endian:", big_endian_result)
    print("Little Endian:", little_endian_result)

if __name__ == "__main__":
    main()
