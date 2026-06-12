#!/bin/bash 
IP_ADDRESS="${1}" # Assign the first command-line argument passed to the script to the variable IP_ADDRESS.
case ${IP_ADDRESS} in # Begin a 'case' conditional statement to evaluate the value inside the IP_ADDRESS variable.
    192.168.*) # Pattern match block: Check if the IP address string starts exactly with "192.168.".
    echo "Network is 192.168.x.x" # Print a message confirming that the IP belongs to a 192.168 network range. we use 192.168.1.1
;; # Double semicolon acting as a terminator for the "192.168.*" code block execution.
10.0.*) # Pattern match block: Check if the IP address string starts exactly with "10.0.".
echo "Network is 10.0.x.x" #  Print a message confirming that the IP belongs to a 10.0 network range. we use 10.0.1.1
;; # Double semicolon acting as a terminator for the "10.0.*" code block execution.
*) # Default fallback pattern (wildcard): Catches any string value that did not match the previous rules.
echo "Could not identify the network" # Print a message indicating that the IP address range is unknown or unsupported.
;; # Double semicolon acting as a terminator for the default wildcard code block execution.
esac # End the conditional 'case' structure statement ('case' spelled backward).