#!/bin/bash

#Program Number: 2
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will print error message if command line arguments are not equal to three,
#otherwise prints the three command line arguments. 

if [ "$#" -eq 3 ];
then
    for i in "$@";
    do
        echo "$i"
    done

else
echo "Command line arguments are $#. Provide 3 command line arguments"

fi