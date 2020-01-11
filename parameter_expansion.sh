#!/bin/bash
#Parameter expansion let us do cool things with variables

name="Daniel"
echo "${name}'s repository is very cool"

#Replace a word from a string with another:
samp_string="The dog is so funny"
echo "${samp_string//dog/cat}"

#Replace white spaces with another character:
samp_string_2="Hi I'm a string with some whitespaces."
echo "${samp_string_2//[[:blank:]]/-}"

#Replace name for Juan if the variable name doesn't exist:
echo "I am ${name:=Juan}"

#Obtain string lenght, slice strings:
#Count starts at 0, as it should...
echo "The original string is: $samp_string_2"
echo "The samp_string_2 lenght is: ${#samp_string_2}"
echo "Sliced string from the 2 position: ${samp_string_2:2}"
echo "Sliced string from 2 to 7 position: ${samp_string_2:2:7}"
echo "Sliced string from where it has an a before a white space: ${samp_string_2#*a }"
