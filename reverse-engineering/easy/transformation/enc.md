# Challenge Title

## Description

I wonder what this really is...

You are provided with an encoded string:

```
灩捯䍔䙻ㄶ形楴獟楮獴㌴摟潦弸強㕤㐸㤸扽
```

The following code - apparently Python - is provided too:

```python
''.join([chr((ord(flag[i]) << 8) + ord(flag[i + 1])) for i in range(0, len(flag), 2)])
```

## Hints

You may find some decoders online.

