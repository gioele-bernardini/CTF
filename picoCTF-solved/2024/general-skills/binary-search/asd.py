#!/usr/bin/env python3

from pwn import *

def main():
  host = 'atlas.picoctf.net'
  port = 52425
  user = 'ctf-player'
  password = 'f3b61b38'

  print("Establishing connection..")
  io = ssh(user, host, password=password, port=port)
  io.

  io.close()
  print('Done.')

if __name__ == "__main__":
    main()