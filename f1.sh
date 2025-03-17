#!/bin/bash

read -p "Enter the file path: " file
read -p "Enter the directory path: " dir

if [ -f "$file" ]; then
    echo "The file '$file' exists."
else
    echo "The file '$file' does not exist."
fi

if [ -d "$dir" ]; then
    echo "The directory '$dir' exists."
else
    echo "The directory '$dir' does not exist."
fi

