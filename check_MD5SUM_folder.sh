#!/bin/bash       
# email: barajasg@unican.es
   
echo "Check Md5sum of a foder: " $1

#Option 1: Compare Data Only
#Print files
echo " "
printf "Print files: \n"
find $1 -type f -name "*"  | awk '{print $1}'
#show a md5sum data for each file
echo " "
printf "Show a md5sum data for each file: \n"
find $1 -type f -name "*" -exec md5sum {} + | awk '{print $1}'
#show md5sum for files together
echo " "
printf "Show md5sum for files together: \n"
printf " "
find $1 -type f -name "*" -exec md5sum {} + | awk '{print $1}' | sort | md5sum
