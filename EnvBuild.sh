
#	@Author      		: Deepti Deshpande
#	@Description 		: Build the environment after new Linux OS distribution installation
#	@Date 	     		: June 7,2015
# 	@Linux distribution     : Linux distribution- Debian

#!/bin/bash

#Retrive new list of packages
sudo apt-get update

#Perform Upgrade
sudo apt-get dist-upgrade -y

#install editing tools
sudo apt-get install -y vim
sudo apt-get install -y vim-gnome
sudo add-apt-repository -y ppa:openshot.developers/ppa
sudo apt-get -y update
sudo apt-get install -y openshot openshot-doc


#installing ubuntu-restricted-extras
sudo apt-get install -y ubuntu-restricted-extras

#important installation
sudo apt-get install -y eclipse
	#remove existing jdk
sudo apt-get purge -y openjdk*
	#install jdk
sudo apt-get install -y openjdk-7-jdk

sudo apt-get install -y haskell
sudo apt-get install -y maven
sudo apt-get install -y crontab
sudo apt-get install -y git
sudo apt-get install -y gnome-common

#installing Big-data essentials
sudo apt-get install -y spark
sudo apt-get install -y sbt

#installing other miscellaneous softwares
sudo apt-get install -y filezilla
	#install archive manager
sudo apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller
sudo apt-get install -y skype
sudo apt-get install -y tomcat
sudo apt-get install -y gpg
sudo apt-get install -y pgp
sudo apt-get install -y transmission
sudo apt-get install -y openssh
sudo apt-get install -y gtk-doc
sudo apt-get install -y virtualbox-.
sudo apt-get install -y libdvdread
sudo apt-get install -y libnss-d:i
sudo apt-get install -y libxss:i

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update -y
sudo apt-get install -y google-chrome-stable

sudo apt-get install -y octave
sudo apt-get install -y gccgo-go
sudo apt-get install -y julia
sudo apt-get install -y xclip
sudo apt-get install -y dropbox
sudo apt-get install -y conkey

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

#installing zsh and staging .zshrc_alias and .zshrc_functions
sudo apt-get install zsh
wget https://github.com/dxd132630/DeeptiDeshpande/blob/master/.zshrc_alias
wget https://github.com/dxd132630/DeeptiDeshpande/blob/master/.zshrc_functions
source ./zshrc_alias >> .zshrc
source ./zshrc_functions >> .zshrc

#text editor
sudo apt-get install nedit

# Finding if Hyper-threading is enabled 
lscpu | grep -i -E  "^CPU\(s\):|core|socket" 

cat /proc/cpuinfo | grep -E "cpu cores|siblings|physical id" |xargs -n 11 echo |sort |uniq

sudo apt-get install terminator

# Latex installation
sudo apt-get install texlive-latex-base

# SBT installation
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt


