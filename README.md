# bash_project_guessinggame
number_of_lines=$(shell wc -l guessinggame.sh | egrep -o "[0-9]+")
date=$(shell date)
README.md:bash  guessinggame.sh
        echo "Title: Guessing Game  " > README.md
        echo "The date and time at which \`make\` was run: $(date)  " >> README.md
        echo "Number of lines contained in \`guessinggame.sh\`: $(n_lines)  " >> README.md
