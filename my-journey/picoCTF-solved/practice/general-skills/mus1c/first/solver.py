with open("data.txt", "r") as file:
    lines = file.readlines()

    for line in lines:
        line = line.strip()

        out = chr(int(line))
        print(out, end="")

    print("")
