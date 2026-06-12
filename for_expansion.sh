#!/bin/bash
for file in example_file*; do # Loop through all items in the current directory matching the pattern "example_file*".
    if [[ "${file}" == "example_file1" ]]; then # Check if the current filename is exactly equal to the string "example_file1".
        echo "Skipping the first file" # Print an informative update message stating that this specific file is being skipped.
        continue # Skip the rest of the current loop iteration and jump immediately to the next file in the list.
    fi # Mark the end of the 'if' conditional evaluation block.
    echo "${RANDOM}" > "${file}" # Generate a random integer number and overwrite (or populate) the current file with it.
done # Mark the end of the code block belonging to the 'for' loop structure.