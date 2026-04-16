ls -l -a -h      # List all files (including hidden) in long format with human-readable sizes.
ls -lah          # Shorthand for the above; displays permissions, owners, sizes, and dates.
man ls           # Opens the manual (documentation) for the list directory contents command.
man git          # Opens the main manual for the Git version control system.
man git clone    # Opens the specific manual page for the command used to copy a repository.
touch                                  # Update file timestamps or create an empty file if it doesn't exist.
touch script.sh                        # Create an empty file named 'script.sh'.
chmod +x script.sh                     # Add execute permission for all users (owner, group, and others).
chmod u+x script.sh                    # Add execute permission only for the owner (user) of the file.
chmod o-r secreto.txt                  # Remove read permission for 'others' (users not in the owner group).
touch secreto.txt                      # Create an empty file named 'secreto.txt'.
touch privado                          # Create an empty file named 'privado'.
chmod u+rw,go-rwx privado              # Give read/write to owner, and remove all permissions for group/others.