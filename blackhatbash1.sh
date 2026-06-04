#!/usr/bin/env bash
set -x-
#--snip--
set +x
bash --version # Displays the installed version and details of the Bash shell
echo ${RANDOM} # Prints a pseudo-random integer between 0 and 32767
echo ${SHELL} # Prints the path to the current user's default login shell
env # Lists all current environment variables exported in the session
echo ${UID} # Prints the User ID (numeric identifier) of the current logged-in user
echo ${OSTYPE} # Prints the operating system type/environment (e.g., linux-gnu)
mkdir directory1 # Creates a single new directory named 'directory1'
mkdir directory2 directory3 # Creates multiple directories ('directory2' and 'directory3') at once
ps -e -f # Lists every active process on the system (-e) using the full-format listing (-f)
ps -ef # Performs the exact same process listing, combining the flags into a single argument
#bash -r blackhatbash1.sh Runs the script in restricted mode (rbash) to limit user actions and commands
#bash -n blackhatbash1.sh Checks the script for syntax errors without actually executing any commands
#bash -x blackhatbash1.sh Runs the script in debug mode, printing each command and its arguments as they expand
