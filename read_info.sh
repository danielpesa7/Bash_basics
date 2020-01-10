#!/bin/bash

#Read more than one variable from prompt:
read -p "Enter 2 numbers to sum: " num1 num2

sum=$((num1 + num2))
echo $num1 + $num2 = $sum

#Read from propmt but don't show the typing:
pass="Hola pass"
read -sp "Write the secret code: " secret_code
if [ "$secret_code" == "$pass" ]; then
	echo "The access has been granted..."
else
	echo "The password is incorrect..."
fi

#Substitute Original Input Format Separator (OIFS)

OIFS="$IFS"
IFS="," #We change the ehitespace separator to a comma separator.

read -p "Enter two numbers separated by commas to sum them!: " num1 num2
num1=${num1//[[:blank:]]/} #The blank means that if there is whitespaces in the input we remove them.
num2=${num2//[[:blank:]]/} #The blank means that if there is whitespaces in the input we remove them.
sum=$((num1+num2))
echo "The sum between $num1 and $num2 is: $sum"

IFS="$OIFS"
