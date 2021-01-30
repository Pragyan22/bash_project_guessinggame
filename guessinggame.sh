#!/bin/bash

function guessinggame {
        count_files=$(ls -1 | wc -l)
        while  true
        do
                echo -n "how many files do you think are there in this directory??"
                read files
                if ! [[ $files =~ ^[0-9]+$ ]]
                then
                        echo "your  input does not seem to be a positive integer"
                elif [[ $files -eq $count_files ]]
                then
                        echo "congrats on correct guess!!"
                        break
                elif [[ $files -gt $count_files ]]
                then
                        echo "your guess is too high"
                elif [[ ($files -lt $count_files && $files -ge 0) ]]
                then
                        echo "your guess is too low"
                fi
        done
}

guessinggame