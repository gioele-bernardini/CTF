# PicoCTF Challenges Archive

**A repository containing all material related to PicoCTF challenges, categorized and documented.**

## Project Status

⚠️ **Work in Progress** ⚠️

This repository is continuously being updated as I complete more challenges.

### Usage

Feel free to explore the repository and review all the challenges I have tackled. A hidden file (`.counter.txt`) is located in the parent directory. This file is protected with an immutability flag, making it unmodifiable without first removing the flag, even when using superuser privileges.

To modify the file, you can use the following command from the parent directory:

```bash
sudo chattr -i .counter.txt
```

This will allow you to make changes to the file.

## File indicators

In the folder for the ctf themselves, if the challenge is not completed, a file named '.NOT_COMPLETED' will appear. You can view the non completed challenges by using the command on the parent folder:

```bash
find . | grep '.NOT_COMPLETED' | tee /dev/tty | 
{ count=$(wc -l); echo "TOTAL: $count"; }
```

On the other hand, if such file does _not_ exist within the folder, the challenge is considered as **completed**.

There is no need to indicate once a challenge category is completed or not: quality and learning is way more important than the quantity and the mere call for completismo.