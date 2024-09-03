#!/usr/bin/env python3

import marshal
import dis

# Path to the bytecode
bytecode_file_path = 'snake.pyc'

# Open the file
with open(bytecode_file_path, 'rb') as f:
  # Jump the first 16 byte (file header)
  # f.seek(16)

  # Load the bytecode
  bytecode = marshal.load(f)

# Disassemble the bytecode
dis.dis(bytecode)

