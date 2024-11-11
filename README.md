# PicoCTF Challenges Archive

**A repository containing all materials related to PicoCTF challenges, categorized and documented.**

## Project Status

⚠️ **Work in Progress** ⚠️

This repository is regularly updated as new challenges are completed.
My older write-ups might be a bit rough: it's part of the process to also learn to write better ones and in my own style!

## Usage

Feel free to explore the repository and review the challenges I have tackled. A hidden file (`.counter.txt`) is located in the parent directory.
This file is protected by an immutability flag, which prevents modifications unless the flag is removed, even with superuser privileges.

To modify the file, execute the following command from the parent directory:

```bash
sudo chattr -i .counter.txt
```

This will allow you to make changes to the file.

### Challenge Status Indicators

Within each challenge folder, if the challenge is incomplete, a file named `NOT_COMPLETED` will be present.
To list all the incomplete challenges, run the following command from the parent directory:

```bash
find . | grep 'NOT_COMPLETED' | tee /dev/tty | 
{ count=$(wc -l); echo "TOTAL: $count"; }
```

If the `NOT_COMPLETED` file is absent, the challenge is considered **completed**.

Please note, there is no need to explicitly mark when an entire challenge category is complete.
The focus is on **quality** and learning, not on the quantity of challenges completed or the pursuit of 100% completion.

<!-- To view all executable files >
<!-- find . -type f -exec file {} + | grep 'ELF' -->

