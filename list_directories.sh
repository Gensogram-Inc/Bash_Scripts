#!/bin/bash

output=file_list.txt

#create an output file if it doesn’t exist
if [ ! -f "$output" ]; then
        touch "$output"
fi

read -p "Enter the directory path: " directory_path

#check if the path is true
while [ ! -d "$directory_path" ]; do
        read -p "$directory_path doesn’t exist, please enter a valid path: " directory_path
done

# Date and time stamp function
log_message() {
        echo "$(date +'%Y-%m-%d %H:%M:%S') $1" >> "$output"
}

log_message "$(basename "$directory_path")  directory listing started;"

#All conditions are true, list directory to file using the append command
ls -al "$directory_path" >> "$output"
echo "Done!... directory list saved to ~/$output"

log_message "$(basename "$directory_path") directory listing successful!"
