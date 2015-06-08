
#	@Author      : Deepti Deshpande
#	@Description : Build the environment after new Linux OS distribution installation
#	@Date 	     : June 7,2015

#!/bin/bash

#Retrive new list of packages
sudo apt-get update

#Perform Upgrade
sudo apt-get dist-upgrade -y

#install editing tools
sudo apt-get install vim
sudo apt-get install vim-gnome
sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt-get update
sudo apt-get install openshot openshot-doc


#installing ubuntu-restricted-extras
sudo apt-get install ubuntu-restricted-extras

#important installation
sudo apt-get install eclipse
	#remove existing jdk
sudo apt-get purge openjdk*
	#install jdk
sudo apt-get install openjdk-7-jdk

sudo apt-get install haskell
sudo apt-get install maven
sudo apt-get install crontab
sudo apt-get install git
sudo apt-get install gnome-common

#installing Big-data essentials
sudo apt-get install spark
sudo apt-get install sbt

#installing other miscellaneous softwares
sudo apt-get install filezilla
	#install archive manager
sudo apt-get install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller
sudo apt-get install skype
sudo apt-get 
sudo apt-get install tomcat
sudo apt-get install gpg
sudo apt-get install pgp
sudo apt-get install transmission
sudo apt-get install openssh
sudo apt-get install gtk-doc
sudo apt-get install virtualbox-.
sudo apt-get install libdvdread
sudo apt-get install -y libnss-d:i
sudo apt-get install -y libxss:i

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update -y
sudo apt-get install -y google-chrome-stable

sudo apt-get install octave
sudo apt-get install gccgo-go
sudo apt-get install xclip
sudo apt-get install dropbox
sudo apt-get install conkey

#Setting the SSH with git account
#defining the global variables of git account
git config --global user.name "dxd132630"
git config --global user.email "dxd132630@utdallas.edu"

#generating RSA pub and private key
ssh-keygen -t rsa -b 4096 -C "dxd132630@utdallas.edu"

#copy the key to paste in the github account
xclip -sel clip <~/.ssh/id_rsa.pub

#establish connection between remote git with github account
ssh -T git@github.com
#create working directory in the required directory
git init

#clone the repository
git clone http://github.com/dxd132630/<Repository_Name>
git status

#post changes commands
git add *
git commit
git push
