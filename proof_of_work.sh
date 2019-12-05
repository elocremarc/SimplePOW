#!/bin/bash


# this function guesses the users number based on its hash
guess_function () {

secrethash=$(echo $secret | md5sum)
echo "secret hash is:" $secrethash

#start brute force guessing the secret at 0
guess=0

# run a hash on guess call it guesshash
guesshash=$(echo $guess | md5sum)

# loop while guesshash is not equal to secrethash
while [ "$guesshash" != "$secrethash" ]
do

	echo "guess " $guess " " $guesshash

	guess=$((guess+1))
	guesshash=$(echo $guess | md5sum)
done
	echo "guess " $guess " " $guesshash
	echo "The secret is " $guess
}

read -p "Enter a secret number between 0-100: " secret
if [ $secret -ge 0 ] && [ $secret -le 100 ]
then
	guess_function
else
	echo "invalid number"
fi
