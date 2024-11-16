# PicoCTF Challenges Archive

**A repository containing all materials related to PicoCTF challenges, categorized and documented.**

## Project Status

⚠️ **Work in Progress** ⚠️

This repository is regularly updated as new challenges are completed.

## About the write-ups

My older write-ups might be a bit rough; it's part of the process to learn how to write better ones and develop my own style!

In particular, the oldest solved challenges have two markdown files in their respective folders: one for the challenge description (`CHALLENGE.md`) and another for the write-up itself (`WRITEUP.md`). I realized that this approach was redundant and unnecessarily increased the workload. Additionally, the write-ups were of very poor quality.

In the challenges I solved later, I decided to create *one single file* (`WRITEUP.md`) where I included the description, my considerations, useful sources and links I used to learn and, last but not least, the write-up itself.

Most of the "old" challenges mentioned above fall into the categories of *general skills* and the easy/medium section of *binary exploitation*, as those were the very first topics I started with.

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

