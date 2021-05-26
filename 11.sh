#!/bin/bash

#Program Number: 11
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will print the disk space of each directory in the given file system. It takes the name of file system as command line argument.
#Usage source 11.sh filesystemname


fs="$@"
du $(find /home -name "$fs" -type d) -h