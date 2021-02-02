#!/usr/bin/env bash
# File:guessinggame.sh

function readme {
	make README.md
	echo "Date: $(date)" >> README.md
}

readme

answer=0
actual=$(ls | wc -l)
while [[ ! $answer -eq $actual ]]
do
	echo "HOW MANY FILES DO YOU HAVE IN YOUR DIRECTORY? >>"
	read answer

	if [[ $answer =~ [0-9] ]]
	then
		if [[ $answer -gt $actual ]]
		then
			echo "YOUR ANSWER IS TOO HIGH."
		elif [[ $answer -lt $actual ]]
		then
			echo "YOUR ANSWER IS TOO LOW."
		elif [[ $answer -eq $actual ]]
		then 
			echo "CONGRATULATION! YOUR ANSWER IS CORRECT."
		fi
	else
		echo "WRONG ENTRY. PLS ENTER THE INTEGER NUMBER."
	fi
done
 

