#!/usr/bin/env python3

import pexpect
import sys
import time

# SSH Credentials Configuration
SSH_USER = "ctf-player"
SSH_HOST = "atlas.picoctf.net"
SSH_PORT = "52491"
SSH_PASSWORD = "1ad5be0d"  # Replace with your password

# Game Configuration
LOW = 1
HIGH = 1000
MAX_GUESSES = 10

def connect_ssh():
  """
  Establishes an SSH connection using pexpect.
  Returns the spawned child process if successful, otherwise None.
  """
  ssh_command = f"ssh -p {SSH_PORT} {SSH_USER}@{SSH_HOST}"
  try:
    child = pexpect.spawn(ssh_command, encoding='utf-8', timeout=10)
    # Uncomment the next line to enable logging of interactions for debugging
    # child.logfile = sys.stdout

    # Handle initial SSH prompts
    index = child.expect([
      'Are you sure you want to continue connecting (yes/no)?',
      '[Pp]assword:',
      pexpect.EOF,
      pexpect.TIMEOUT
    ])

    if index == 0:
      child.sendline('yes')
      index = child.expect(['[Pp]assword:', pexpect.EOF, pexpect.TIMEOUT])
      if index == 1:
        print("SSH connection closed unexpectedly.")
        return None
    if index == 1:
      child.sendline(SSH_PASSWORD)
    elif index == 2:
      print("SSH connection closed unexpectedly.")
      return None
    elif index == 3:
      print("Timeout during SSH connection.")
      return None

    return child

  except pexpect.exceptions.EOF:
    print("SSH connection closed unexpectedly.")
  except pexpect.exceptions.TIMEOUT:
    print("Timeout during SSH connection.")
  except Exception as e:
    print(f"Unexpected error during SSH connection: {e}")
  
  return None

def play_game(child):
  """
  Plays the binary search game to guess the number.
  Attempts to retrieve the flag upon success.
  """
  try:
    # Wait for the game welcome messages
    child.expect("Welcome to the Binary Search Game!", timeout=10)
    child.expect("I'm thinking of a number between 1 and 1000.", timeout=10)

    low = LOW
    high = HIGH
    guess_count = 0

    while guess_count < MAX_GUESSES:
      guess = (low + high) // 2
      guess_count += 1
      print(f"Attempt {guess_count}: Guessing {guess}")

      # Send the guess to the game
      child.expect("Enter your guess: ", timeout=10)
      child.sendline(str(guess))

      # Wait for the game's response
      response_index = child.expect([
        "Higher! Try again.",
        "Lower! Try again.",
        f"Congratulations! You guessed the correct number: {guess}",
        "Sorry, you've exceeded the maximum number of guesses.",
        pexpect.EOF,
        pexpect.TIMEOUT
      ], timeout=10)

      if response_index == 0:
        print("Response: Higher! Try again.")
        low = guess + 1
      elif response_index == 1:
        print("Response: Lower! Try again.")
        high = guess - 1
      elif response_index == 2:
        print(f"Response: Congratulations! You guessed the correct number: {guess}")
        # Capture the flag
        child.expect("Here's your flag: ", timeout=10)
        flag = child.readline().strip()
        print(f"\nFlag found: {flag}")
        child.close()
        return
      elif response_index == 3:
        print("Response: You have exceeded the maximum number of guesses.")
        child.close()
        return
      elif response_index == 4:
        print("SSH connection closed unexpectedly.")
        return
      elif response_index == 5:
        print("Timeout during interaction with the game.")
        return

    # If loop exits without guessing correctly
    print("Could not find the number within the maximum number of attempts.")
    child.close()

  except pexpect.exceptions.EOF:
    print("SSH connection closed unexpectedly during the game.")
  except pexpect.exceptions.TIMEOUT:
    print("Timeout during game interaction.")
  except Exception as e:
    print(f"Unexpected error during the game: {e}")

def main():
  child = connect_ssh()
  if child:
    play_game(child)

if __name__ == "__main__":
  main()
