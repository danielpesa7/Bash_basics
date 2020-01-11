#!/bin/bash

read -p "How old are you?: " age

case $age in
[0-4])
	echo "To young for school"
	;; #This means stop there, don't look the other cases.
5)
	echo "Go to Kindergarten"
	;;
[6-9]|1[0-8]) #Checking if age is between 6 - 9 or age is between 10 - 18
	echo "Go to $((age-5)) grade"
	;;
*)
	echo "You are too old for school"
	;;
esac

#Ternary operator:
can_vote=0
((age >= 18?(can_vote=1):(can_vote=0))) # After ? we have the true result, after : the false result.We can perform any arithmetic operation on the results.
echo "Can vote: $can_vote"
