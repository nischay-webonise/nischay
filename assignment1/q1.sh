#!/bin/bash
clear
host=$HOSTNAME
echo "hostname ===>$host"
echo -n "os architechture type ===>"
uname -m

echo -n "os version ===>"
 
lsb_release -d
echo -n "home directory ===>"
echo "$HOME"
echo -n "current logged in users===>"
users
echo -n "groups i belong===>"
groups
echo "All files in home directory excluding directories===>"
ls -p -R $HOME |grep -v /	
text="${text}File Creation: $(date)\n"
echo -e "$text" > "assignment-$(date).log"

