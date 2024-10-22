#!/usr/bin/env bash

# Read the target checksum from checksum.txt
target=$(cat checksum.txt)

echo "Target checksum successfully loaded: $target"

# Iterate over the files in the 'files/' directory
for file in files/*; do
  echo "Processing file: $file"
  
  # Extract only the hash from the sha256sum result
  guess=$(sha256sum "$file" | awk '{print $1}')
  # echo "Calculated hash for $file: $guess"

  # Compare the calculated hash with the target checksum
  if [[ "$target" == "$guess" ]]; then
    echo "Match found for file: $file"
    echo "Initiating decryption script..."
    ./decrypt.sh "$file"
    echo "Decryption completed successfully."
    exit 0
  fi
done

echo "No matching checksum found in the directory."
exit 1
