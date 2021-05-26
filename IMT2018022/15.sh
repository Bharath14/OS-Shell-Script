#!/bin/bash

#Program Number: 15
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will perform the corresponding operations based on the input using SED. The filename is given as the command line argument.
#Usage source 15.sh filename
#Enter input


file="$@"

echo "Select an option from below"
echo "1.For a given file, find all the lines containing our search pattern."
echo "2.List the lines not containing the search string"
echo "3.Matching lines starting with a given pattern and ending in a second pattern"
echo "4.Print a file starting from a certain line until to the end of file."
echo "5.Search a given pattern in a file and replace with a new pattern and display the file."
echo "6.Insert a given string at the beginning of each line of the file."
echo "7.Insert a given string at the end of each line of the file."

read option

case "$option" in
    1) echo "Input the pattern"
        read inp
        sed -n "/$inp/p" $file 
        ;;
    2) echo "Input the pattern"
        read inp
        echo "Lines not matching the given pattern"
        sed -n "/$inp/!p" $file 
        ;; 
    3) echo "Input the starting pattern"
        read startinp
        echo "Input the Ending pattern"
        read endinp
        sed -n "/^$startinp.*$endinp/p" $file
        ;;
    4) echo "Input the number of starting line"
        read inp
        sed -n "$inp,\$p" $file ;;
    5) echo "Input the search pattern"
        read search
        echo "Input the replace pattern"
        read replace
        sed -i "s/$search/$replace/g" $file
        cat "$file"
        ;;
    6)echo "Input the string"
        read str
        sed -i "s/^/$str /g" $file 
        cat "$file";;
    7)echo "Input the string"
        read str
        sed -i "s/$/$str/g" $file 
        cat "$file";;
esac