 

README.md: guessinggame.sh 
	touch README.md 
	echo "Title:<br>"  > README.md
	echo "Guessing Game<br>" >> README.md
	echo "Number of lines in script:" >> README.md
	echo "<br>" >> README.md
	cat guessinggame.sh | wc -l >> README.md 
	echo "<br>" >> README.md
	echo "Date:<br>" >> README.md
	date >> README.md

