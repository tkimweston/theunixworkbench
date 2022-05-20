#!/usr/bin/env bash

function welcome_message() {
	echo -e "\033[33;5;7mThe Guessing Game\033[0m: Guess the number of files in the current directory"
	echo ". and .. special files do not count"
}


welcome_message

number_of_files=$(ls | wc -l)
guess=-1

while [[ $guess -ne $number_of_files ]]
do
	echo -n "Your guess: "
	read guess
	if [[ $guess -eq $number_of_files ]]
	then
		echo -e "\033[33;6;7mCongratulations, you guessed the correct number of files!\033[0m"
		exit 0
	fi
	if [[ $guess -lt $number_of_files ]]
	then
		echo "Your guess is low, try again"
	else
		echo "Your guess is high, try again"
	fi
done


