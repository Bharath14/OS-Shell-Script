
#!/bin/bash

#Program Number: 7
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will take input between 1 and 3 and execute the command corresponding to the input.
#Copying file requires name of the source file and name of the destination file.
#Removing file requires name of the file
#Rename file requires original name of file and new name of file.
#Usage source 7.h
#Enter input 


echo "Enter value between 1 to 3"
echo "1.Copy File"
echo "2.Remove File"
echo "3.Rename File"

read i
case "$i" in
    1) echo "Enter the filename to be copied"
        read filename1
        
        echo "Enter the filename to which the above file to be copied"
        read filename2

        cp "$filename1" "$filename2"

        ;;
    2) echo "Enter the filename to be removed"
        read filename
        rm "$filename"
        ;;
    3) echo "Enter the filename that should be renamed"
        read filename1

        echo "Enter the new name of the file"
        read filename2

        mv "$filename1" "$filename2"

        ;;
esac