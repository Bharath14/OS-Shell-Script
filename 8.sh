#!/bin/bash

#Program Number: 8
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will print the login time of the user. The user name is given as command line argument.
#Usage source 8.sh user 

last -R "$@" | head -n 1 | awk '{print $3,$4,$5,$6}'