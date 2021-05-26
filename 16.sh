#!/bin/bash

#Program Number: 16
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will perform the corresponding operations based on the input using AWK. The filename is given as the command line argument.
#Usage source 16.sh filename
#Enter input.

file="$@"
echo "Select option from below"
echo "1.Display a given file."
echo "2.Print the lines which match with a given pattern."
echo "3.Print only a specific field in the file."
echo "4.Format a given file with Name, Designation, Department and Salary headings and at the end of a file print Report Generated."
echo "5.Find the employees, who has id > 200"
echo "6.Find the list of employees in a Technology Department."
echo "7.Print the number of employees in Technology Department."

read option

case "$option" in
    1)awk '{print;}' $file ;;
    2)echo "Input the expected pattern"
        read inp
        awk "/$inp/" $file
    ;;
    3) awk '{ print $2,$3;}' $file;;
    4)awk 'BEGIN {print "Name\tDesignation\tDepartment\tSalary";} {print $2,"\t",$3,"\t",$4,"\t",$NF,"\t";} END{print "Report Generated"}' $file;;
    5)awk '$1 >200' $file ;;
    6)awk '$4 ~/Technology/' $file ;;
    7)awk '$4 ~ /Technology/ { count++; } END { print "Number of employees in Technology Dept =",count;}' $file ;;

esac        