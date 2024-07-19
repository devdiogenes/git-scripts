#!/bin/bash

# Loop through each directory in the current directory
for dir in */; do
  if [ -d "$dir/.git" ]; then
    echo "Updating repository in $dir"
    cd "$dir"
    git pull
    cd ..
  else
    echo "$dir is not a git repository, skipping..."
  fi
done

read -p "Press enter to continue"
