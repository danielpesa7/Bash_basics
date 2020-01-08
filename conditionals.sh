#!/bin/bash

#Read input from prompt:
read -p "What is your name? " name
echo "Hello, $name"
read -p "How old are you $name? " age

#Basic conditionals:
if [ $age -ge 16 ]
then
	echo "Oh!, It seems like you can drive."
elif [ $age -eq 15 ]
then
	echo "Just be patient! You can drive next year."
else
	echo "You can't drive :("
fi

#Another way to use conditionals:
if (($age >= 18 )); then
	echo "Let's get drunk $name!"
else
	echo "You can't drink with us tonight $name."
fi

if (( (($age % 2)) == 0 )); then
	echo "Did you know your age is even $name?"
else
	echo "Did you know your age is odd $name?"
fi
