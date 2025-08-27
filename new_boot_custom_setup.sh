#!/bin/bash

# PURPOSE/DESCRIPTION : This is a single file consisting of all the necessary 
# things I require when I start my ubuntu machine or restart my machine after a hang.

#
# FIRSTLY UBUNTU related changes has to be made by me!
# 1. connect wifi - TODO
# 2. change system date/time - done
# 3. increase audio level - done

# THEN Firefox related changes have to be made  by me !
# 1. Installing ad-block extension & stylus - TODO
# 2. enable cycle throug tabs - TODO
# 3. login to youtube automatically OR google login automatically - TODO
# 4. login to github automatically - TODO
# 5. login to 

# some default apps in ubuntu has to be removed like games,  thunderbird, etc. - TODO

set -e   #this flag will exit the script as soon as first error or non-zero exit status is encountered
set -x   # print each command when it gets executed
set -o pipefail   # stop executing script even if any command fails in pipeline 

#setting the right timezone for ubuntu
sudo timedatectl set-timezone Asia/Kolkata


## not working from this script file due to some unknown issue. Find the root cause(TODO)
#set sound over-amplification
#sudo gsettings set org.gnome.desktop.sound allow-volume-above-100-percent true
#disable on-board touchpad
#sudo gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled

## EDIT .bashrc file and reload it. Till that time I ave put this in bashrc file and reloading the file
echo 'gsettings set org.gnome.desktop.sound allow-volume-above-100-percent true' >> $HOME/.bashrc 
#echo 'gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled' >> $HOME/.bashrc
echo "alias clear='clear -x'" >> $HOME/.bashrc
source $HOME/.bashrc



## install vscode
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/c306e94f98122556ca081f527b466015e1bc37b0/code_1.102.2-1753187809_amd64.deb
if [ ?$ -eq 0 ]; then
sudo dpkg -i code_1.102.2-1753187809_amd64.deb
else
echo "Error ! Couldn't download vscode from website !"
fi

#### SNAP PACKAGE MANAGEMENT ######
#testing
sudo chmod u+x snap_tasks.sh
./snap_tasks.sh
# in case if I want to check the channel of firefox I can use the command:
# snap info firefox
# sudo snap refresh && sudo snap refresh firefox --channel latest/stable


# I also have to update thins in apt repository 
sudo add-apt-repository -y universe

#### APT PACKAGE MANAGEMENT ####
# testing
sudo chmod u+x apt_tasks.sh
./apt_tasks.sh



## AFETR INSTALLING ALL THE ABOVE  ##
1. INSTALL FIREFOX AB BLOCK EXTENSION : AdGuard AdBlocker by Adguard Software Ltd.(Green Shield with tick)
2. ENABLE FIREFOX SETTING: TOGGLE RECENTLY VISITED TABS 







