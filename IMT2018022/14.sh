#!/bin/bash

#Program Number: 14
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will print 'Good Morning' 'Good Evening' 'Good Night' messages based on the current time.
#Usage source 14.sh

time1="$(date +"%H")"
if [[ "$time1" -lt 12 ]] ;
then
    echo "Good Morning. Time is '$(date +%r)'"
elif [[ "$time1" -lt 18 ]];
then 
    echo "Good Afternoon. Time is '$(date +%r)'"
else
    echo "Good Evening. Time is '$(date +%r)'"
fi