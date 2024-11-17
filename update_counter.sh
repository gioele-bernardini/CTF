#!/bin/bash

# Path to README.md
README_FILE="README.md"

# Check if README.md exists
if [ ! -f "$README_FILE" ]; then
  echo "Error: $README_FILE not found!" >&2
  exit 1
fi

# Define the badge color
BADGE_COLOR="pink"

# Extract the current count from the badge using grep and regex
current_count=$(grep -oP "(?<=CTF%20Solved-)\d+(?=-$BADGE_COLOR)" "$README_FILE")

# Check if the count was successfully extracted
if [[ -z "$current_count" ]]; then
  echo "Error: Could not find the CTF Solved badge or extract the count." >&2
  exit 1
fi

# Increment the count
new_count=$((current_count + 1))

echo "CTF solved: $new_count"

# Generate the new badge URL using Shields.io
new_badge="![CTF Solved](https://img.shields.io/badge/CTF%20Solved-$new_count-$BADGE_COLOR)"

# Replace the old badge with the new one in README.md
# Replace only the first occurrence
sed -i "/!\[CTF Solved\](https:\/\/img\.shields\.io\/badge\/CTF%20Solved-$current_count-$BADGE_COLOR)/ {
    s|!\[CTF Solved\](https://img\.shields\.io/badge/CTF%20Solved-$current_count-$BADGE_COLOR)|$new_badge|
    q
}" "$README_FILE"

if [[ $? -eq 0 ]]; then
  echo "Badge updated in $README_FILE"
else
  echo "Error: Failed to update the badge." >&2
  exit 1
fi

