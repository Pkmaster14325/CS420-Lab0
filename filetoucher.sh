#!/bin/sh
#
#Shell Script that tracks all files in the current directory
#in a new tracking file of whatever you name it. If the file exists, overwrite it. Otherwise 
#Create the new file.


echo "File name: $1" 

#Store the file name that is passed when running the script
FILE=$1

#We check if that file exists, if it exists overwrite it. 
if [ -e $FILE ]; then
>$FILE

else
#Create the new file otherwise
touch $FILE

fi
#Looop through all files in the directory, append each filename to the tracking file
for f in *; do
if [ -f "$f" ]; then
echo "$f" >> "$FILE"
fi
done

#Print the contents of the file
cat "$FILE"
