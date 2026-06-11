#!/bin/bash 
USER_INPUT="${1}" # Assigns the first command-line argument passed to the script to the variable USER_INPUT.
if [[ -z "${USER_INPUT}" ]]; then # Checks if the USER_INPUT variable is empty (zero length).
    echo "You must provide an argument!" # Prints an error message to the terminal if no argument was provided.
    exit 1 # Exits the script immediately with a status code of 1, indicating an error.
fi # Closes the first if-statement block.
if [[ -f "${USER_INPUT}" ]]; then # Checks if the path stored in USER_INPUT exists and is a regular file.
    echo "${USER_INPUT} is a file." # Prints a message stating that the input is a file.
elif [[ -d "${USER_INPUT}" ]]; then # Executed if the first check fails; checks if the path is a directory.
    echo "${USER_INPUT} is a directory." # Prints a message stating that the input is a directory.
else # Executed if the input is neither a regular file nor a directory (e.g., it does not exist).
    echo "${USER_INPUT} is not a file or a directory." # Prints a message stating the path is neither a file nor a directory.
fi # Closes the second conditional if-elif-else block.