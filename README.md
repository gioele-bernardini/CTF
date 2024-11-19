# PicoCTF Challenges Archive

**A repository containing all materials related to PicoCTF challenges, categorized and documented.**

## Project Status

⚠️ **Work in Progress** ⚠️

This repository is regularly updated as new challenges are completed.

## About the write-ups

My older write-ups might be a bit rough; it's all part of the process of learning to write better and developing my own style! 
>The older write-ups are the ones **without** a last updated date.

In particular, the oldest solved challenges have two markdown files in their respective folders: one for the challenge description (`CHALLENGE.md`) and another for the write-up itself (`WRITEUP.md`). I realized that this approach was redundant and unnecessarily increased the workload. Additionally, the write-ups were of poor quality.

In the challenges I solved later, I decided to create *one single file* (`WRITEUP.md`) where I included the description, my considerations, useful sources and links I used to learn and, last but not least, the write-up itself.

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

<!-- CTF_BADGE -->
![CTF Solved](https://img.shields.io/badge/CTF%20Solved-65-pink)
