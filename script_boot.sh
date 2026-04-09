mkdir proyecto #it create an directory named project
cd proyecto/ #it changes the directory to project using a relative path
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto #it changes the directory to project using a absolute path
cd #it changes the directory to home
pwd #it shows the directory where we are
cd ~ #it changes the directory to home using a relative path
cd /home/codespace/ #changes the directory to home using a absolute path
echo $HOME #it shows the absolute path of home
echo $BASH #it shows the absolute path of bash
echo $PATH #it shows all paths the system can use
ls -lai #it shows the secret archives, the inodes and the size, modification date
ls -l -a -i #it's the same of ls -lai, in this case it's just longer, -l You can see the permissions, the owner, the size, and the modification date, -a
#Shows all files, including hidden ones (those that begin with .) and -i shows the inode (the unique id)
man ls #it shows the manual
ls --all #it shows all in the actual directory and the difference with ls -a it's the ls --all is the complete comand
ls -a #it shows the same that ls -all, ls -a is only a short way to write the command
. #it's the actual directory
.. #It's the directory one folder up (parent directory)