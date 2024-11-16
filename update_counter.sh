#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
  echo "Error: This script must be run as root (sudo)." >&2
  exit 1
fi

# Counter file
counter_file=".COUNTER"

# Check if the counter file already exists
if [ ! -f "$counter_file" ]; then
  echo 0 > "$counter_file"
fi

count=$(cat "$counter_file")
count=$((count + 1))

# Write the new value to the file
echo "$count" > "$counter_file"
echo "CTF solved: $count"

# Path to README.md (modify if necessary)
readme_file="README.md"

# Check if README.md exists
if [ ! -f "$readme_file" ]; then
  echo "Error: $readme_file not found!" >&2
  exit 1
fi

# Generate the new badge URL using Shields.io
badge="![CTF Solved](https://img.shields.io/badge/CTF%20Solved-$count-blue)"

# Replace the existing badge in README.md
# Ensure the badge is preceded by the placeholder <!-- CTF_BADGE -->
sed -i "s|!\[CTF Solved\](https://img\.shields\.io/badge/CTF%20Solved-[0-9]\+-blue)|$badge|" "$readme_file"

echo "Badge updated in $readme_file"

