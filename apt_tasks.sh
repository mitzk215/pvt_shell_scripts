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

## installing support for viewing webp image files
sudo apt install -y webp-pixbuf-loader

#installing vim bucklespring
sudo apt install -y vim bucklespring git

## check bluetooth service is running or not, if not use this command to run it !
# sudo systemctl restart bluetooth.service


#running bucklespring in the background
nohup buckle -g 50 &
