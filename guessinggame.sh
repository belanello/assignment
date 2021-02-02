#!/usr/bin/env bash
# File:guessinggame.sh

make README.md

function readme {
	echo "Title: Guessing Game" > README.md
	echo "Date: $(date)" >> README.md
	echo "Number of lines in script: $(cat guessinggame.sh | wc -l )" >> README.md
}
readme

answer=0
actual=$(ls | wc -l)
while [[ ! $answer -eq $actual ]]
do
	echo "How many files do you have in your current directory? >>"
	read answer

	if [[ $answer =~ [0-9] ]]
	then
		if [[ $answer -gt $actual ]]
		then
			echo "Your answer is too high"
		elif [[ $answer -lt $actual ]]
		then
			echo "Your answer is too low"
		elif [[ $answer -eq $actual ]]
		then 
			echo "Congratulation! Your answer is correct"
		fi
	else
		echo "Wrong entry. Pls enter integer number."
	fi
done
 

