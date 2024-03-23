#!/bin/bash

file="dictionary.txt"
target="level5.py"

cycles=0
# Verifica se il file esiste
if [ ! -f "$file" ]; then
  echo "Il file $file non esiste."
  exit 1
fi

while IFS= read -r line; do
  ((cycles++))
  echo "Check ["$cycles"] ==> {$line}"
  output=$(echo -e "$line" | python3 "$target")

  if [[ "$output" == "pico"* ]]; then
    break
  fi
done < "$file"
