
#!/bin/bash

#Program Number: 6
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program takes a input from the value 1 to 4 and execute their corresponding command.
#Usage source 6.sh
#Enter number between 1 and 4 


echo "Enter a value between 1 to 4" 
echo "1. ls"
echo "2. pwd"  
echo "3. who" 
echo "4. exit"
 
read i

case "$i" in 
    1)ls;;
    2)pwd;;
    3)who;;
    4)exit;;
esac