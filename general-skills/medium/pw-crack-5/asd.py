#!/usr/bin/env python3

from pwn import *

# Enable debug
# context.log_level = 'debug'

target = process(['python3', 'level5.py'])

