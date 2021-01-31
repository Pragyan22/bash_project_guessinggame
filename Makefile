number_of_lines=$(shell wc -l guessinggame.sh | egrep -o "[0-9]+")
DATE=$(shell date)
README.md:
	echo Title: Guessing Game >> README.md
	echo The date and time at which make was run: $(DATE) >> README.md
	echo Number of lines contained in guessinggame.sh: $(number_of_lines) >> README.md