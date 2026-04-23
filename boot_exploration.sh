ls -l -a -h # List all files (including hidden) in long format with human-readable sizes.
ls -lah # Shorthand for the above; displays permissions, owners, sizes, and dates.
man ls # Opens the manual (documentation) for the list directory contents command.
man git # Opens the main manual for the Git version control system.
man git clone # Opens the specific manual page for the command used to copy a repository.
touch # Update file timestamps or create an empty file if it doesn't exist.
touch script.sh # Create an empty file named 'script.sh'.
chmod +x script.sh # Add execute permission for all users (owner, group, and others).
chmod u+x script.sh # Add execute permission only for the owner (user) of the file.
chmod o-r secreto.txt # Remove read permission for 'others' (users not in the owner group).
touch secreto.txt # Create an empty file named 'secreto.txt'.
touch privado # Create an empty file named 'privado'.
chmod u+rw,go-rwx privado # Give read/write to owner, and remove all permissions for group/others.
sudo echo "hola" > /etc/archivo_protegido # Fails: 'sudo' applies to echo, but the redirection (>) is handled by your user (who lacks permission).
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null # Success: Writes to the file with sudo, but hides the output (silent mode).
echo "hola" | sudo tee /etc/archivo_protegido # Success: Writes to the file with sudo and also prints the text in the terminal.
sudo sh -c 'echo "chao" >> /etc/archivo_protegido' # Appends "chao" to a system-protected file using a subshell to grant root write permissions.
cat /etc/archivo_protegido # Displays the file content using an absolute path because the file is located outside the current user directory.
sudo -i # Switches the current session to a root login shell, granting full administrative privileges and changing the environment to the root user's.
exit    # Closes the current shell session or exits the root environment to return to the previous standard user.
sudo su  # Switches to the superuser (root) account while keeping your current user's environment variables and paths.
sudo su- # Switches to the root account and starts a login shell, loading the root user's specific environment, configuration, and home directory.
echo '#!/bin/sh' > hola.sh # Creates a new file named hola.sh and writes the shebang line to specify the shell interpreter.
echo 'echo "Hola desde mi primer script"' >> hola.sh  # Appends the echo command to the existing hola.sh file without overwriting the first line.
cat hola.sh # Displays the content of the script using a relative path because the file was just created in the current directory.
./hola.sh # Executes the script in the current directory using a relative path (./) to tell the system exactly where the executable is.
ls -l hola.sh # Lists the file details, such as permissions, owner, and size, using a relative path to target the file in the current directory.
chmod +x hola.sh # Modifies the file permissions to make the script executable by adding the 'execute' flag.
ls -l hola.sh # Displays the file details again to verify that the execution permissions (the 'x') have been correctly applied.
./hola.sh # Runs the script using a relative path (./), which explicitly tells the shell to look for the executable in the current working directory.



















