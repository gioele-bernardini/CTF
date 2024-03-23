#! /usr/bin/env python3

import hashlib

result = hashlib.md5(b'Confucius')

# print("The result is => ", end ="")
print(result.digest())
