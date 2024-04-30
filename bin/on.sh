#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: A file name must be set, e.g. on \"the wonderful thing about tiggers\"."
  exit 1
fi

# file_name=$(echo "$1" | tr ' ' '-')
file_name=$1
formatted_file_name=${file_name}.md
cd ~/obsidian/Pavault || exit
touch "Inbox/${formatted_file_name}"
nvim "Inbox/${formatted_file_name}"
