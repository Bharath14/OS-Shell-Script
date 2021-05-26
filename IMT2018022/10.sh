#!/bin/bash

#Program Number: 10
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will back up the given directory into other file given as second input and stores in home directory.
#Usage source 10.h backup_directory backup_directoryname

tar -czvf "$2".tar.gz "$1"
mv "$2".tar.gz /home/$USER