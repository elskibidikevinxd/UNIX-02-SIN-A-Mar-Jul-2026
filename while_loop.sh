#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop" # Define a variable with the name of the file that will stop the loop ("stoploop").
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do # Start a loop that runs WHILE the specified file DOES NOT exist (!).
    echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..." # Print a message indicating the stop file was not found yet.
    echo "Checking again in 2 seconds..." # Print a warning that a new check will happen in 2 seconds.
    sleep 2 # Pause script execution for 2 seconds before checking the condition again.
done # Mark the end of the code block belonging to the 'while' loop.
echo "File was found! Exiting..." # Print the final message when the file appears and the script terminates.