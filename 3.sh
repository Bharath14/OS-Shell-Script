#!/bin/bash

#Program Number: 3
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will create one file for each command line input with the respective name of the 
#command line input.

for i in "$@";
do
    touch "$i"
    echo "Created file for the argument '$i'"
done