#!/bin/bash

## Author : Xdfx 
## Github : Xdfx00 
## Date   : 10/02/2024


# Checking .git directory available 

if [[ -d .git  ]]
then
	git add .


	echo -n "Enter the commit message"
	read commit_message

	# Check current branch
	current_branch=$(git symbolic-ref --short HEAD) 

	git commit -m "$commit_message"

	git puch origin $curren_branch

else
	echo "This is not git rep!"
fi
