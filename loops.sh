#!/bin/bash
#Basic while loop:
num=1
while [ $num -le 10 ]; do
	echo $num
	num=$((num + 1))
done

#While loop with if statement:
num_2=1
while [ $num_2 -le 100 ]; do #Remember -le means: Less or equal to...
	if [ $((num_2 % 2)) == 0 ]; then
		echo $num_2
	fi
	num_2=$((num_2 + 1))
	if ((num_2 == 77)); then
		break
	fi
done
even_numbers(){
while [ $num_2 -le 200 ]; do
	if (( ((num_2 % 2)) == 0 )); then
		num_2=$((num_2 + 1))
		continue
	fi

	if ((num_2 >= 115)); then
		break
	fi

	echo $num_2
	num=$((num_2 + 1))
done
}

#Using a while loop to read data over a file:

while read var1 var2 var3; do
	printf "Name: ${var1}\nAge: ${var2}\nCity: ${var3}\n"
done < information.txt

#For loop:

for (( i=0; i <=10; i=i+1 )); do
	echo $i
done

for i in {A..Z}; do
	echo $i
done

#Arrays only can be 1-D

especial_numbers=(3.14 2.718 .57721 4.6692)

echo "Pi : ${especial_numbers[0]}"
especial_numbers[4]=1.618 #Add an element to the array
especial_numbers+=(777 666) #Add more than one element to the array

#Print all elements from the array with a for loop:
for i in ${especial_numbers[*]}; do
	echo $i
done

#Print indexes:
for i in ${especial_numbers[@]}; do
	echo $i
done

echo "Array lenght: ${#especial_numbers[@]}"
echo "Index 3 lenght: ${#especial_numbers[3]}"

#Sort an array whit a for loop:
sorted_nums=($(for i in "${especial_numbers[@]}"; do
	echo $i;
done | sort))

for i in ${sorted_nums[*]}; do
	echo $i
done

#Delete array element:
unset 'sorted_nums[6]'

#Delete an array:
unset sorted_nums
















