#!/bin/bash
#This is the way to comment things.

#echo is the basic print function.
echo 'Printing something: '
echo "Hello World!"

#This is a way to declare a variable:
myName="Daniel"

num1=5
num2=3

#Performing arithmetic operations:
sum_result=$((num1 + num2))
sub_result=$((num1 - num2))
mul_result=$((num1 * num2))
div_result=$((num1 / num2))
exp_result=$((num1 ** num2))
mod_result=$((num1 % num2))

echo 'Performing arithmetic operations: '
echo "5 + 3 = $sum_result"
echo "5 - 3 = $sub_result"
echo "5 * 3 = $mul_result"
echo "5 \ 3 = $div_result"
echo "5 ** 3 = $exp_result"
echo "5 % 3 = $mod_result"

#Incremental shorthands
echo 'Performing incremental operations: '
num3=5
let num3+=4
echo "Original number: $num3"
echo "number ++ = $((num3++))"
echo "++ number = $((++num3))"
echo "number -- = $((num3--))"
echo "-- number = $((--num3))"

#Performing operations with python:
num4=2.34
num5=5.23
num6=$(python -c "print ($num4 + $num5)")
echo $num6
string=$(python -c "print ('Hi there I am a string','--','Hi there I am a string too!')")
echo $string
