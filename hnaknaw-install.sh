#!/bin/bash

#ISPConfig3 Installer
shouldloop1=true;
while $shouldloop1; do
read -p "Would you like to launch ISPConfig3 Auto Installer? [y/n]: " delconf
shouldloop1=false;
if [ $delconf == 'y' ]; then
   echo "ISPConfig3 Auto Installer Initiated."
   apt-get update && apt-get upgrade
   apt-get install unzip
   cd /tmp
   wget --no-check-certificate https://github.com/servisys/ispconfig_setup/archive/master.zip
   unzip master.zip
   cd ispconfig_setup-master/
   ./install.sh
elif [ $delconf == 'n' ]; then
   echo "ISPConfig3 will not be installed."
else
   echo "Enter a valid response (y/n)";
   shouldloop1=true;
fi
done



#Open Game Panel Installer
shouldloop2=true;
while $shouldloop2; do
read -p "Would you like to launch OpenGamePanel Auto Installer? [y/n]: " delconf
shouldloop2=false;
if [ $delconf == 'y' ]; then
   echo "OpenGamePanel Auto Installer Initiated."
   su - root
   
elif [ $delconf == 'n' ]; then
   echo "OpenGamePanel will not be installed."
else
   echo "Enter a valid response (y/n)";
   shouldloop2=true;
fi
done
