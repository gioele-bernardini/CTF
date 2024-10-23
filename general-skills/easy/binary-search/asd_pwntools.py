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
        # Set the log level to 'debug' for detailed output during debugging
        context.log_level = 'debug'

        # Attempt to establish the SSH connection
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

        # --------------------------------------------------------------------
        # Initial Issues Encountered:
        # 1. **Bytes vs. Strings:**
        #    - **Problem:** Initially, the script sent and received data as strings (`str`)
        #      instead of bytes (`bytes`). pwntools operates primarily with bytes, leading to
        #      `BytesWarning` messages and unexpected behavior.
        #    - **Solution:** Use byte literals (prefixed with `b`) in `recvuntil` and `sendline`.
        #      Encode strings to bytes before sending and decode bytes to strings after receiving.
        #
        # 2. **Premature Sending of Guesses:**
        #    - **Problem:** The script sent guesses immediately after receiving welcome messages,
        #      without waiting for the "Enter your guess: " prompt. This caused the server to
        #      respond with just `"\r\n"`, leading the script to interpret it as an unexpected response.
        #    - **Solution:** Ensure the script waits for the "Enter your guess: " prompt before
        #      sending each guess by using `recvuntil`.
        #
        # 3. **Handling Echoed Guesses:**
        #    - **Problem:** After sending a guess, the server echoed the guess back (`500\r\n`)
        #      before providing the actual response ("Higher! Try again."). The initial script
        #      mistakenly interpreted the echoed guess as an unexpected response.
        #    - **Solution:** After sending a guess, read two lines:
        #      a. The echoed guess (which can be logged or ignored).
        #      b. The actual response from the game, which should be processed accordingly.
        #
        # 4. **Capturing the Flag:**
        #    - **Problem:** Attempting to capture the flag immediately after receiving the
        #      congratulations message could fail due to the echoed guess interfering with
        #      the expected prompt.
        #    - **Solution:** After detecting the correct guess, explicitly wait for the
        #      "Here's your flag: " prompt before reading the flag.
        # --------------------------------------------------------------------

        # Receive the welcome messages from the server
        conn.recvuntil(b"Welcome to the Binary Search Game!\r\n", timeout=10)
        conn.recvuntil(b"I'm thinking of a number between 1 and 1000.\r\n", timeout=10)

        # Wait for the first "Enter your guess: " prompt before sending any guesses
        conn.recvuntil(b"Enter your guess: ", timeout=10)

        low = LOW
        high = HIGH
        guess_count = 0

        while guess_count < MAX_GUESSES:
            # Calculate the mid-point for the binary search
            guess = (low + high) // 2
            guess_count += 1
            print(f"Attempt {guess_count}: Guessing {guess}")

            # Send the guess as bytes
            conn.sendline(str(guess).encode())

            # ----------------------------------------------------------------
            # Handle the echoed guess and the actual response separately.
            # ----------------------------------------------------------------

            # Receive the echoed guess from the server
            echoed_guess = conn.recvline(timeout=10).decode().strip()
            # Log the echoed guess for debugging purposes
            log.debug(f"Echoed Guess: {echoed_guess}")

            # Receive the actual response from the server
            response = conn.recvline(timeout=10).decode().strip()
            print(f"Response: {response}")

            # Process the server's response to adjust the guessing range
            if "Higher! Try again." in response:
                print("Response: Higher! Try again.")
                low = guess + 1
            elif "Lower! Try again." in response:
                print("Response: Lower! Try again.")
                high = guess - 1
            elif f"Congratulations! You guessed the correct number: {guess}" in response:
                print(f"Response: Congratulations! You guessed the correct number: {guess}")
                # After guessing correctly, wait for the flag prompt
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

            # Wait for the next "Enter your guess: " prompt before sending the next guess
            conn.recvuntil(b"Enter your guess: ", timeout=10)

        # If the loop exits without guessing correctly
        print("Could not find the number within the maximum number of attempts.")
        conn.close()

    except Exception as e:
        print(f"Unexpected error during the game: {e}")

def main():
    ssh_session = connect_ssh()
    play_game(ssh_session)

if __name__ == "__main__":
    main()
