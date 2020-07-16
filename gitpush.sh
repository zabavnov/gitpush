#!/bin/bash
if [[ $* != *--* ]]
then
echo "Use flags:
--new
--add
--commit
--push
--tree"
fi
if [[ "$1" = "--new" ]]
then
echo $'.DS_Store\nmain.c\na.out\n.gitignore\ngitpush.sh' > .gitignore
git init
git add .
git status
read -p "Enter git repo link: " gitlink
git remote add origin $gitlink
fi
if [[ "$1" = "--add" ]]
then
git add .
git status
fi
if [[ "$1" = "--commit" ]]
then
read -p "Enter the message for the new commit: " message
git commit -m "$message"
git log
fi
if [[ "$1" = "--push" ]]
then
git push origin master
fi
if [[ "$1" = "--tree" ]]
then
git ls-tree -r master
fi
git status
