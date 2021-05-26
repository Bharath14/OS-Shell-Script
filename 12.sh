#!/bin/bash

#Program Number: 12
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program echoes NIT if the command line word is IIT and echoes IIT if command line word is NIT. else echoes STDERR for every other input.
#Usage source 12.sh word 

word="$@"
if [ "$word" == "IIT" ]; 
then
	echo NIT

elif [ "$word" == "NIT" ]; 
then
	echo IIT
    
else
	echo STDERR
fi