#!/bin/bash

filenum=$(ls -p | grep -v / | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Right answer!"
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less :"
			guess_filenum
		else
			echo "There is more : "
			guess_filenum
		fi
	fi
}

echo "Guess how many files are in the current directory:"
guess_filenum
