#!/bin/bash

#Program Number: 5
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will search for the given file in home/user directory and prints all the paths where the file founds.
#If file didn't found then prints a error message.
#Usage source 5.sh filename1 filename2  


for i in "$@";
do
    if [[ $(find /home/"$USER"/ -name "$i" -type f|wc -l) != 0 ]]; 
        then
	    echo "File name '$i' found, Path of the file: "
	    find /home/"$USER"/ -name "$i" -type f
    else
	    echo "NO File with name '$i'"
    fi
done