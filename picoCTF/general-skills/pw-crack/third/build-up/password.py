#! /usr/bin/env python3

import sys

def check_password(password):
    target_password = "bx"
    if password == target_password:
        return True
    else:
        return False

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 %s <password>\n" % sys.argv[0])
        sys.exit(1)

    password_attempt = sys.argv[1]
    if check_password(password_attempt):
        print("Congrats! Password found ;)")
    else:
        print("The password inserted is wrong.. :/")
