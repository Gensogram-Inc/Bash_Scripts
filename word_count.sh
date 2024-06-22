#!/bin/bash

echo Check the word counts for any file

file=$1
read -p "Enter your file name: " file

for (( a=1;a<5;a++ ))
do
        if [ ! -f "$file" ]; then
        echo "File not found!"
        read -p "Try again:" file
        fi
done

for (( a=1;a<5;a++ ))
do
        word_count=$(wc -w < "$(basename $file)")


        # Print the word count
        echo "The file '$file' has $word_count words."
        read -p "Do you want to check another file?" file
done
