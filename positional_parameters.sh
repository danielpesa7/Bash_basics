#!/bin/bash
echo "1st Argument: $1"
echo "Second Argument: $2"

sum=0

while [[ $# -gt 0 ]]; do
	num=$1
	sum=$((num + sum))
	shift #It changes the seconds argument to be the first and so on.
done

echo "Sum: $sum"
