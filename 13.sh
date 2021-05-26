#!/bin/bash

#Program Number: 13
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will print the multiplication table of a given number upto 10. The number is given as command line argument.
#Usage source 13.sh num 

num="$@"
for i in 1 2 3 4 5 6 7 8 9 10;
do 
    echo "$num x $i = `expr $i \* $num`"
done