#*!/usr/bin/env bash

COMMAND="$1"

if [ "$COMMAND" == "save" ]; then
git add .
echo "The following files were staged:"
git status
read -p "Enter commit message: " message
git commit -m "$message"
echo "Changes saved..."

elif [ "$COMMAND" == "push" ]; then
git add .
echo "The following files were staged:"
git status
read -p "Enter commit message: " message
git commit -m "$message"
echo "Changes saved..."
read -p "Confirm push to remote: [y/n]" approval

fi
