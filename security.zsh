id # Displays real and effective user and group IDs
groups # Prints the names of the primary and supplementary groups for the current user
groups root # Prints the group memberships for the specific user "root"
id -u # Prints only the effective numeric user ID (UID)
id -g # Prints only the effective numeric group ID (GID)
id -G # Prints all numeric group IDs (GIDs) associated with the user
cat /etc/group | grep root # Searches for the "root" group definition within the configuration file
mkdir ~/proyecto_unix # Creates a new directory named "proyecto_unix" in the home folder
ls -la ~/proyecto_unix # Lists all files in the directory with detailed information, including hidden ones
groupadd desarrolladores # Creates a new standard group named "desarrolladores"
groupadd -g 2000 operaciones # Creates a group named "operaciones" with a specific GID of 2000
groupadd --system servicios_web # Creates a system group for service accounts with a low GID
grep -E "desarrolladores|operaciones|servicios_web" /etc/group # Verifies the creation of the specific groups in the group file, we can use "grep "desarrolladores\|operaciones\|servicios_web" /etc/group" too
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs # Retrieves the system's defined range for manual and system group IDs