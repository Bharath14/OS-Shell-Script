
#!/bin/bash

#Program Number: 9
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will print the lines between specified numbers from a file. filename, starting line number, ending line number are given as command line arguments
# Usage source 9.sh filename startnum endnum 

if [[ "$#" -ne 3 ]] ;
then 
    echo "Incorrect number of arguments. Check Input!"
else 
sed -n $2,$3\p $1 

fi