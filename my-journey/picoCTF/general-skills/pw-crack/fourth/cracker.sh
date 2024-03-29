#!/bin/bash

file="password.txt"
target="level4.py"

while IFS= read -r line; do
  echo -e "$line" | python3 "$target"
done < "$file" | grep "pico"*
