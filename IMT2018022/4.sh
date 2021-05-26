#!/bin/bash

#Program Number: 4
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will first make a hidden folder with name 'recyclebin' in home directory and moves the file 
#given files in the command line input into recyclebin.
#Usage source 4.sh filename1 filename2 


mkdir -p /home/$USER/.recyclebin
for i in "$@";
do
    mv "$i" ~/.recyclebin
done