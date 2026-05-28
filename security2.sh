#!/bin/bash
id # Displays current user and group identity information.
id -gn # Displays the name of your current primary group.
echo "grupo actual: $(id -gn)" # Prints the text "grupo actual:" followed by your current primary group name.
touch ~/antes_de_newgrp.txt # Creates an empty file named 'antes_de_newgrp.txt' in your home directory (or updates its timestamp if it already exists).
ls -la ~/antes_de_newgrp.txt # Lists the newly created file with detailed information (permissions, owner, group, size, and date), including hidden attributes.
newgrp nombre_grupo # Log in to a new group (changes your current primary group).
touch ~/grupo_heredado.txt # Creates an empty file named 'grupo_heredado.txt' in your home directory (or updates its timestamp if it already exists).
ls -la ~/grupo_heredado.txt # Lists the newly created file with detailed information (permissions, owner, group, size, and date), including hidden attributes.
groupadd desarrolladores
su - root -g desarrolladores
id -gn
echo "Nuevo grupo activo: $(id -gn)"