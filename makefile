#!/usr/bin/env bash
# File: makefile

README.md: guessinggame.sh
	touch README.md
	echo "Title: Guessing Game" > README.md
	echo "Number of lines in script: $(cat guesssinggame.sh | wc -l)" >> README.md

