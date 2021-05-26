#!/bin/bash

#Program Number: 1
#Student Name:Ellanti Bharath Sai; 
#Register Number: IMT2018022
#Date: 12-01-2021 
#Description: This program will output the count of block device files in /dev directory.    
ls /dev/ -l|grep -c ^b 