#!/bin/bash

# Testo da aggiungere all'inizio del file
TEXT="[OBSOLETE WRITEUP]"

# Trova i file da aggiornare
for file in $(find . -type f -name "WRITEUP.md"); do
  # Leggi il contenuto corrente del file
  content=$(cat "$file")
  
  # Sovrascrivi il file con il nuovo contenuto
  {
    echo "$TEXT"
    echo # Linea vuota per separare
    echo "$content"
  } > "$file"
  
  echo "Aggiornato il file: $file"
done
