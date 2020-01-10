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

if (( (($age >= 18)) && (($age < 21)) )); then
	echo "You can drink alcohol in Colombia but not in the US!"
elif (($age >= 21 )); then
	echo "You can drink alcohol in Colombia and in the US!"
else
	echo "You can't drink alcohol yet"
fi
# || and && operands inside if condition (i.e. between round parentheses) are logical operands (or/and)
# || and && operands outside if condition mean then/else

#Create a file and automatically open it:
touch sample_file.txt && vim sample_file.txt

#Verify if a directory already exist, if not create it:
[ -d sample_dir ] || mkdir sample_dir

#Compare strings:

str1=""
str2="Sad"
str3="Happy"

if [ "$str1" ]; then
	echo "$str1 is not null"
fi

#See if a string is empty:
if [ -z "$str1" ]; then
	echo "str1 has no value"
fi

if [ "$str2" == "$str3" ]; then
	echo "$str2 is equal to $str3"
else
	echo "$str2 is not equal to $str3"
fi

if [ "$str2" > "$str3" ]; then
	echo "$str2 is greater than $str3"
else
	echo "$str3 is greater than $str2"
fi
