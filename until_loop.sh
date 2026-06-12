#!/bin/bash 
FILE="outputskibidi.txt" # Define a variable named FILE and assign it the name of the file to monitor ("outputskibidi.txt").
touch "${FILE}" # Create an empty file if it doesn't exist, or update its modification time if it already does.
until [[ -s "${FILE}" ]]; do # Start a loop that will repeat the inner blocks UNTIL the file exists and is NOT empty (-s).
    echo "${FILE} is empty..." # Print a message to the terminal stating that the target file is currently empty.
    echo "Checking again in 2 seconds..." # Print an update letting the user know the script will wait before checking again.
    sleep 2 # Pause script execution for 2 seconds to prevent the loop from overloading the CPU.
done # Mark the end of the code block belonging to the 'until' conditional loop.
echo "${FILE} appears to have some content in it!" # Print a final success statement once the loop breaks because content was found.

#se para el script inyectando contenido al archivo 
