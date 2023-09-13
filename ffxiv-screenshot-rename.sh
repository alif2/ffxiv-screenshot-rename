#!/bin/bash

# the directory containing the files
dir="/c/Users/<Username>/Documents/My Games/FINAL FANTASY XIV - A Realm Reborn/screenshots"

# iterate over each png file in the directory
for oldname in "$dir"/*.png
do
    # extract the basename without path
    base=$(basename "$oldname")

    # extract date, time, and milliseconds from the filename
    olddate=$(echo "$base" | cut -d "_" -f2)
    oldtime=$(echo "$base" | cut -d "_" -f3)
    milliseconds=$(echo "$base" | cut -d "_" -f4 | cut -d "." -f1)

    # rearrange date and time to new format
    newdate=$(echo "$olddate" | awk '{print substr($0,5,4)"-"substr($0,1,2)"-"substr($0,3,2)}')
    newtime=$(echo "$oldtime" | awk '{print substr($0,1,6)}')

    # form the new name
    newname="ffxiv_${newdate}_${newtime}_${milliseconds}.png"

    # rename the file
    mv "$oldname" "$dir/$newname"
done
