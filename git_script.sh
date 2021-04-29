#*!/usr/bin/env bash

COMMAND="$1"

if [ "$COMMAND" == "save" ]; then
git add .
echo "The following files were staged:"
git status
read -p "Enter commit message: " message
git commit -m "$message"
echo "Changes saved..."
fi
