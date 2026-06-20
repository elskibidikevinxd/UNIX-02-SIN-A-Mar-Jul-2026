#!/bin/bash
FIRSTNAME="${1}" #First arg (first name), with 1 because 0 is for file name
LASTNAME="${2}" #Second arg with 2 
touch output.txt #Creating a file
date "+%d/%m/%Y" > output.txt #Getting the date and redirecting the output to the output file previusly created
echo "${FIRSTNAME} ${LASTNAME}" >> output.txt # Printing the values of the args (Full name)
cp output.txt backup.txt #Copying to make a backup
cat output.txt #Printing the file output.txt