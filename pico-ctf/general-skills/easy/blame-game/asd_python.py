import subprocess

def get_commit_hashes(filename):
  hashes = []
  with open(filename, 'r') as f:
    for line in f:
      if line.startswith("commit"):
        hashes.append(line.split()[1])  # Extracts the commit hash
  return hashes[::-1]  # Reverse the list to start from the latest commit

def revert_and_test(commit_hash):
  # Perform the revert
  revert_command = ["git", "revert", "--no-commit", commit_hash]
  try:
    subprocess.run(revert_command, check=True)
  except subprocess.CalledProcessError:
    print(f"Error reverting commit {commit_hash}")
    return False

  # Run the test script
  test_command = ["python", "test_script.py"]  # Replace "test_script.py" with your test script
  result = subprocess.run(test_command, capture_output=True, text=True)

  if result.returncode == 0:
    print(f"The correct commit is {commit_hash}")
    return True
  else:
    print(f"Commit {commit_hash} is not valid. Restoring the repository.")
    # Reset to the original state
    subprocess.run(["git", "reset", "--hard", "HEAD"], check=True)
    return False

def bruteforce_revert(filename):
  hashes = get_commit_hashes(filename)
  for commit_hash in hashes:
    if revert_and_test(commit_hash):
      break  # Stops the loop if the correct commit is found

if __name__ == "__main__":
  bruteforce_revert("git_log.txt")

