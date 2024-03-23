#! /bin/bash

print_yellow() {
    echo -e "\033[93m\033[1m$1\033[0m"
}

print_red() {
  echo -e "\033[91m$1\033[0m"
}

print_green() {
  echo -e "\033[92m$1\033[0m"
}

for letter1 in {a..z}
do 
    for letter2 in {a..z}
    do 
       echo "Testing $letter1$letter2..." 
        ./password.py "$letter1$letter2" > /dev/null
        if [ $? -eq 0 ]; then
            print_yellow "Password found! => [ $letter1$letter2 ]"
            exit 0
        fi
    done
done
