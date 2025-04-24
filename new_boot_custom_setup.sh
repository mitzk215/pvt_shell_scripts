#! /bin/bash

# PURPOSE/DESCRIPTION : This is a single file consisting of all the necessary 
# things I require when I start my ubuntu machine or restart my machine after a hang.

#
# FIRSTLY UBUNTU related changes has to be made by me!
# 1. connect wifi
# 2. change system date/time
# 3. increase audio level

# THEN FIrefox related changes have to be made  by me !
# 1. Installing ad-blocke extensions, stylus
# 2. enable cycle throug tabs.
# 3. login to youtube automatically OR google login automatically
# 4. login to github automatically.
# 5. login to 

# some default apps in ubuntu has to be removed like games,  thunderbird, etc.

# e flag will exit the script as soon as first error or non-zero exit 
# status is encountered
set -e
set -x
set -o pipeline

#setting the right timezone for ubuntu
sudo timedatectl set-timezone Asia/Kolkata

#### SNAP PACKAGE MANAGEMENT ######
#testing
sudo chmod a+x snap_tasks.sh
./snap_tasks.sh
# in case if I want to check the channel of firefox I can use the command:
# snap info firefox
# sudo snap refresh && sudo snap refresh firefox --channel latest/stable


# I also have to update thins in apt repository 
sudo add-apt-repository -y universe

#### APT PACKAGE MANAGEMENT ####
# testing
sudo chmod a+x apt_tasks.sh
./apt_tasks.sh












