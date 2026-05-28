#!/bin/bash
id # Displays current user and group identity information.
id -gn # Displays the name of your current primary group.
echo "grupo actual: $(id -gn)" # Prints the text "grupo actual:" followed by your current primary group name.
touch ~/antes_de_newgrp.txt # Creates an empty file named 'antes_de_newgrp.txt' in your home directory (or updates its timestamp if it already exists).
ls -la ~/antes_de_newgrp.txt # Lists the newly created file with detailed information (permissions, owner, group, size, and date), including hidden attributes.
newgrp nombre_grupo # Log in to a new group (changes your current primary group).
touch ~/grupo_heredado.txt # Creates an empty file named 'grupo_heredado.txt' in your home directory (or updates its timestamp if it already exists).
ls -la ~/grupo_heredado.txt # Lists the newly created file with detailed information (permissions, owner, group, size, and date), including hidden attributes.
groupadd desarrolladores # Creates a new system group named 'desarrolladores'.
su - root -g desarrolladores # Switches the current session to root with 'desarrolladores' as the primary group.
id -gn # Displays the name of your current primary group.
echo "Nuevo grupo activo: $(id -gn)" # Prints the text "Nuevo grupo activo:" followed by your current primary group name.
touch ~/dentro_de_newgrp.txt # Creates an empty file named 'dentro_de_newgrp.txt' in your home directory.
ls -la ~/dentro_de_newgrp.txt # Lists the newly created file with detailed information including its group ownership.
mkdir -p ~/proyecto_dev/src # Creates a nested directory structure 'proyecto_dev/src' in your home directory if it does not exist.
ls -la ~ # Lists all files and directories in your home directory with detailed information.