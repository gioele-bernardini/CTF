#!/usr/bin/env python3

from pwn import *
import sys

# SSH Credentials Configuration
SSH_USER = "ctf-player"
SSH_HOST = "atlas.picoctf.net"
SSH_PORT = 64823  # Nota: Deve essere un intero
SSH_PASSWORD = "1ad5be0d"  # Replace with your password

# Game Configuration
LOW = 1
HIGH = 1000
MAX_GUESSES = 10

def connect_ssh():
  """
  Establishes an SSH connection using pwntools.
  Returns the SSH session if successful, otherwise exits the script.
  """
  try:
    ssh_session = ssh(user=SSH_USER, host=SSH_HOST, port=SSH_PORT, password=SSH_PASSWORD, timeout=10)
    return ssh_session
  except Exception as e:
    print(f"Error establishing SSH connection: {e}")
    sys.exit(1)

def play_game(ssh_session):
  """
  Plays the binary search game to guess the number.
  Attempts to retrieve the flag upon success.
  """
  try:
    # Start an interactive shell
    shell = ssh_session.process('/bin/bash')

    # Read until the game starts
    shell.recvuntil("Welcome to the Binary Search Game!")
    shell.recvuntil("I'm thinking of a number between 1 and 1000.")

    low = LOW
    high = HIGH
    guess_count = 0

    while guess_count < MAX_GUESSES:
      guess = (low + high) // 2
      guess_count += 1
      print(f"Attempt {guess_count}: Guessing {guess}")

      # Send the guess
      shell.sendline(str(guess))

      # Receive the response
      response = shell.recvline(timeout=10).decode().strip()
      print(f"Response: {response}")

      if "Higher! Try again." in response:
        low = guess + 1
      elif "Lower! Try again." in response:
        high = guess - 1
      elif f"Congratulations! You guessed the correct number: {guess}" in response:
        # Capture the flag
        shell.recvuntil("Here's your flag: ")
        flag = shell.recvline().decode().strip()
        print(f"\nFlag found: {flag}")
        shell.close()
        return
      elif "Sorry, you've exceeded the maximum number of guesses." in response:
        print("Response: You have exceeded the maximum number of guesses.")
        shell.close()
        return
      else:
        print("Unexpected response.")
        shell.close()
        return

    # If loop exits without guessing correctly
    print("Could not find the number within the maximum number of attempts.")
    shell.close()

  except EOFError:
    print("SSH connection closed unexpectedly during the game.")
  except TimeoutError:
    print("Timeout during game interaction.")
  except Exception as e:
    print(f"Unexpected error during the game: {e}")

def main():
  ssh_session = connect_ssh()
  play_game(ssh_session)

if __name__ == "__main__":
  main()

