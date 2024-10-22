# Writeup

## Explanation

This challenge is a bit vague. There is a reference to verifying something using an **SHA-256 checksum**, along with a decryption script.

Upon inspecting the `folder/`, we find nearly 300 files inside, suggesting the possibility of a **brute-force approach**. After reflecting on the problem and understanding that SHA-256 is an injective and non-invertible hash function, it becomes clear that the provided hash must be compared against the hash values of the files in the folder.

We need to write a script that calculates the hash for each file in the folder and compares it with the hash found in `checksum.txt`. This process is quite straightforward and does not require advanced skills.

In our solution, **awk** is used to filter the output from `sha256sum`, which returns a string in the following format:
```
<hash> <file>
```

Lastly, if you're running the decryption script locally, it's important to **modify the provided decryption file**. The script references the correct file using an absolute path on the server (e.g., `/home/ctf-player/drop-in/..etc`), which won't match your local folder structure. You should change this to use either the file's **basename** or its **relative path** for your local environment.

