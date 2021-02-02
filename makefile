 

README.md: guessinggame.sh 
	touch README.md 
	echo "Title:"  > README.md
	echo "Guessing Game" >> README.md
	echo "Number of lines in script:" >> README.md
	cat guessinggame.sh | wc -l >> README.md 
	echo "Date:" >> README.md
	date >> README.md

