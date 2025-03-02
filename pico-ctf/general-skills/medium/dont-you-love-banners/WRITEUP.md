[OBSOLETE WRITEUP]

# Solution

## Explanation

Once we connect to the server, we see an initial banner printed as the server's response. The instructions suggest looking into the `/root` folder, where we find two files:

- `flag.txt`
- `script.py`

However, text editors like Vi or Vim (or similar) are not installed on the remote server, so the only option is to use `cat` to view the files. Unfortunately, we don’t have permission to access `flag.txt`, but we can view the contents of `script.py`.

Here’s the trick: the script opens a file in read mode, located in `/home/player/`, which we can freely access and modify. This means we can potentially redirect it to read `flag.txt` by creating a *symlink*.

Since the script runs with superuser permissions, it can access any file, including `flag.txt`. By creating a symbolic link named `banner` in `/home/player/`, the script will read and print the flag's contents instead of the usual banner.

Here's how to do it:

1. First, remove the original `banner` file.
2. Then, create the symbolic link with the following command:

    ```bash
    ln -s /root/flag.txt banner
    ```

That's it! After creating the symlink, reconnect to the server, and instead of displaying the usual banner, the script will output the flag.
