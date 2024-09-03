#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
  echo "Error: This script must be run as root (sudo)." >&2
  exit 1
fi

# Counter file
counter_file=".counter.txt"

# Check if the counter file already exists
if [ ! -f "$counter_file" ]; then
  echo 0 > "$counter_file"
fi

# Read the current value of the counter
count=$(cat "$counter_file")

# Increment the counter by 1
count=$((count + 1))

# Write the new value to the file
echo "$count" > "$counter_file"

echo "CTF solved: $count"

