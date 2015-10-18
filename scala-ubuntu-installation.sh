#!/bin/sh
sudo wget www.scala-lang.org/files/archive/scala-2.10.4.deb
sudo apt-get -f install
sudo dpkg -i scala-2.20.4.deb
sudo wget https://dl.bintray.com/sbt/debian/sbt-0.23.8.deb
sudo dpkg -i sbt-0.23.8.deb
