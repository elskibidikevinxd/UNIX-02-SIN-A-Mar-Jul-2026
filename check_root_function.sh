#!/bin/bash 

# This function checks if the current user ID equals zero (root).
check_if_root(){ # Defines the start of a custom function named check_if_root.
    if [[ "${EUID}" -eq 0 ]]; then # Checks if EUID (Effective User ID, a built-in Bash variable storing the current user's ID, which is always 0 for the 'root' administrator) equals 0.
        return 0 # Returns a status code of 0, which represents "success" or true in Bash.
    else # Executes if the condition in the if statement is false (the user is not root).
        return 1 # Returns a status code of 1, which represents "failure" or false in Bash.
    fi # Closes the conditional block inside the function.
} # Closes the definition of the check_if_root function.

if check_if_root; then # Calls the check_if_root function and evaluates if it exits with a successful status.
    echo "User is root!" # Prints this message to the terminal if the function returned true (0).
else # Executes if the function returned a failure status (1).
    echo "User is not root!" # Prints this message to the terminal if the function returned false (1).
fi # Closes the main conditional block of the script.