#!/usr/bin/env python3

with open('snake.pyc', 'rb') as f:
  header = f.read(16)
  print(header)

