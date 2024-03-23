pos_pw_list = ["f09e", "4dcf", "87ab", "dba8", "752e", "3961", "f159"]

# Apre il file password.txt in modalità scrittura
with open("password.txt", "w") as file:
    # Itera attraverso ogni password nella lista e scrive ciascuna su una nuova riga nel file
    for password in pos_pw_list:
        file.write(password + "\n")
