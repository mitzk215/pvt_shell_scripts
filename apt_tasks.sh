#!/bin/bash

#installing vim bucklespring
sudo apt install -y vim bucklespring git


#running bucklespring in the background
nohup buckle -g 50 &
