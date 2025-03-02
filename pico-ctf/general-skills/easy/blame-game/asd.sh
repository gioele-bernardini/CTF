#!/bin/bash

# Path to the log file
LOG_FILE="git_log.txt"
# Name of the test script
TEST_SCRIPT="test_script.py"

# Extract commit hashes from the log file and reverse the order
commit_hashes=($(grep '^commit ' "$LOG_FILE" | awk '{print $2}' | tac))

# Loop through each commit hash, starting from the most recent
for commit_hash in "${commit_hashes[@]}"; do
  echo "Attempting to revert commit $commit_hash"

  # Revert the specific commit without committing
  if git revert --no-commit "$commit_hash"; then
    # Run the test script
    if python "$TEST_SCRIPT"; then
      echo "Correct commit found: $commit_hash"
      exit 0
    else
      echo "Commit $commit_hash is not valid, restoring the repository"
    fi
  else
    echo "Error reverting commit $commit_hash, proceeding to the next"
  fi

  # Restore the repository state
  git reset --hard HEAD
done

echo "No valid commit found"
exit 1

