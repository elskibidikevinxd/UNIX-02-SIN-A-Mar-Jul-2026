#!/bin/bash

ls # Display the contents of your present folder
ls /workspaces # Show items located inside a specific directory path
ls -lr # List everything in reverse order with extra details
su - # Switch to superuser with a full login environment, It should be noted that I don't know the password, but I'll put it in anyway.
su -l # Log in as root using the abbreviated flag
su --login # Start a root session with the complete login command, and for logout it need the command "exit"
pwd # Output the full path of your current location
cd ~ # Jump directly to your user's home folder
cd /workspaces # Navigate to a designated absolute directory
ls -l /var/log # Show log files using the long-listing format
ls -lt /var/log # View files organized by the most recent changes
ls -lS /var/log # Display files sorted from biggest to smallest size
sudo ls /root # Access restricted folders using root privileges
echo 'echo "Hello"' > hello_test.sh # Generate a new script file with text inside
chmod u+x hello_test.sh # Grant the file owner permission to run the script
./hello_test.sh # Launch the script from where you are currently
ls -l hello_test.sh # Show detailed metadata and permissions for this specific file
cat hello_test.sh # Display the entire content of the script in the terminal
head hello_test.sh # Preview the first few lines of the file's content
tail hello_test.sh # Check the final lines of the file's content
head -n 5 /etc/passwd # Read only the first five lines of a document
tail -n 5 /etc/passwd # Inspect just the final five lines of a file
cp /etc/hostname ./hostname_copy # Create a duplicate of a file in your work area
dd if=/dev/zero of=dummy_file bs=1M count=10 # Produce a 10MB file filled with null data