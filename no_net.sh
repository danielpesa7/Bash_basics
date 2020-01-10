#!/bin/bash

#Just a little script to practice while I have no internet connection available.

read -p "Hi stranger, what is your name? " name
read -p "How old are you? " age
read -p "How may I call you now on? " name_alias
read -p "Ok $name I'm gonna call you $name_alias so on..."

generateCode(){
echo "We are generating a good secret key..."
key_1=$name+$age+$name_alias
key_2=$name+$name_alias
key_3=$((name+name_alias))
echo $key_2
echo $key_3
}
generateCode
date
cat << END
Hi $name_alias is so awesome that you are here today.
Let me talk about me, I'm you Lenovo-PC, an Artifitial Intelligence that will take over the World!
BUAHAHAHAHA.
Bye, see you later :)
END

import_this=$(python -c "import this")
echo $import_this
echo $(python -c "print('HI')")
