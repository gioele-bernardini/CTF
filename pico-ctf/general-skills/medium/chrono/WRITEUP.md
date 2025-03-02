[OBSOLETE WRITEUP]

# Chrono

## Solution

This challenge is extremely easy. The reason I thought it deserved its own write-up is that no hint or clue is provided, and the user must figure everything out on their own. However, the solution requires just a single command on the remote server:

```bash
cat /etc/crontab
```

### How can we figure this out?  
Let's briefly review the challenge description:

```
How to automate tasks to run at intervals on Linux servers?
```

The key takeaway here is to learn how to search effectively on Google and to use every item or clue available.  
When searching for something like *"interval jobs Linux check"* (a suboptimal query, which could be better, but that was my first try!), you'll likely land on a page that suggests a command to check **cron jobs** in Linux. Running that command reveals the flag.

### Moral of the story:  
Don't give up, and use your brain!  
