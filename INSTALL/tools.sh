#!/bin/bash

# maximize space usage cuz of big tools
resize2fs /dev/mmcblk0p1 

# install usefull tools to do testing
apt-get install git
apt-get install build-essential
apt-get install vim
