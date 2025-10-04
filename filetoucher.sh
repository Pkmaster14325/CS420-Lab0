#!/bin/sh
#
#Shell Script that will check if an inputted file exists in the current directory and adds it to a list 
#that will be printed out. If it doesn't create that file.
#If it does, we will overwrite that file and print it out.

echo "File name: $1" 

FILE=$1

if [ -e $FILE ]; then
>$FILE

else

touch $FILE

fi

for f in *; do
if [ -f "$f" ]; then
echo "$f" >> "$FILE"
fi
done

cat "$FILE"



