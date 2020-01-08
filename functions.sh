#!/bin/bash

#The next function returns the date:

getDate(){
	date
	return
	}

getDate

#Global variable:

name="Daniel"

getLocal(){
	local name="Juan"
	echo "I am the local variable, my name is: $name"
}

getLocal

echo "I am the global variable, my name is: $name"

#Sum function:

getSum(){
	local num1=$1
	local num2=$2
	local sum=$((num1+num2))
	echo $sum
	}

num3=5
num4=7
sum_result=$(getSum num3 num4)
echo "The result of: $num3 + $num4 is: $sum_result"
