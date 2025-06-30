#!/bin/bash

## +++++++++++ viewing .heic photos from iphone in ubuntu 22.04 +++++++++++
## SOURCE: https://sites.google.com/site/installationubuntu/home/ubuntu-22-04/heic-pictures
sudo apt install -y heif-gdk-pixbuf
sudo apt install -y heif-thumbnailer
## rest 3 are not required, above 2 are required only !
#sudo apt install libheif1:amd64
#sudo apt-get install gimagereader gpicview
#sudo apt install converseen
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#installing vim bucklespring
sudo apt install -y vim bucklespring git


#running bucklespring in the background
nohup buckle -g 50 &
