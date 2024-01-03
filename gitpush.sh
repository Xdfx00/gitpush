#!/bin/bash


# Set Your Git username and email
read -p "Enter your Github username: " username
read -p "Enter yur Github Email: " email

if [[ -d .git  ]]
then
	git add .
	echo -n "Enter the commit message: "
	read commit

	# Check Current branch
	current_branch=$(git symbolic-ref --short HEAD)

	git commit -m "$commit"

fi

  git config --global user.email "$username"
  git config --global user.name "$email"

# set the git username and email

git config user.name "$username"
git config user.email "$email"


git push origin $current_branch
