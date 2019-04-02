all: README.md

README.md: guessinggame.sh
	echo "# WORKING ONE" > README.md
	echo -n "> Number lines: " >> README.md
	wc -l guessinggame.sh >> README.md
	echo "***" >> README.md
	echo "The date and time at which make was run." >> README.md
	echo -n "> " >> README.md
	date >> README.md

clean:
	rm README.md
