#!/usr/bin/env python3

from pwn import *
import sys

# SSH Credentials Configuration
SSH_USER = "ctf-player"
SSH_HOST = "atlas.picoctf.net"
SSH_PORT = 64823  # Replace with your actual port
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
    # Optional: Set the log level to debug for detailed output
    context.log_level = 'debug'
    
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
    # Open an interactive shell session
    conn = ssh_session.shell()

    # Optional: Enable logging of all data sent and received
    # conn.log_level = 'debug'

    # Read until the game starts
    conn.recvuntil(b"Welcome to the Binary Search Game!\r\n", timeout=10)
    conn.recvuntil(b"I'm thinking of a number between 1 and 1000.\r\n", timeout=10)
    conn.recvuntil(b"Enter your guess: ", timeout=10)

    low = LOW
    high = HIGH
    guess_count = 0

    while guess_count < MAX_GUESSES:
      guess = (low + high) // 2
      guess_count += 1
      print(f"Attempt {guess_count}: Guessing {guess}")

      # Send the guess as bytes
      conn.sendline(str(guess).encode())

      # Receive the echoed guess
      echoed_guess = conn.recvline(timeout=10).decode().strip()
      # Debug: Print echoed guess
      log.debug(f"Echoed Guess: {echoed_guess}")

      # Receive the actual response
      response = conn.recvline(timeout=10).decode().strip()
      print(f"Response: {response}")

      if "Higher! Try again." in response:
        print("Response: Higher! Try again.")
        low = guess + 1
      elif "Lower! Try again." in response:
        print("Response: Lower! Try again.")
        high = guess - 1
      elif f"Congratulations! You guessed the correct number: {guess}" in response:
        print(f"Response: Congratulations! You guessed the correct number: {guess}")
        # Capture the flag
        conn.recvuntil(b"Here's your flag: ", timeout=10)
        flag = conn.recvline(timeout=10).decode().strip()
        print(f"\nFlag found: {flag}")
        conn.close()
        return
      elif "Sorry, you've exceeded the maximum number of guesses." in response:
        print("Response: You have exceeded the maximum number of guesses.")
        conn.close()
        return
      else:
        print("Unexpected response.")
        conn.close()
        return

      # After processing the response, wait for the next "Enter your guess: " prompt
      conn.recvuntil(b"Enter your guess: ", timeout=10)

    # If loop exits without guessing correctly
    print("Could not find the number within the maximum number of attempts.")
    conn.close()

  except Exception as e:
    print(f"Unexpected error during the game: {e}")

def main():
  ssh_session = connect_ssh()
  play_game(ssh_session)

if __name__ == "__main__":
  main()
