#!/usr/bin/bash
# Takes first argument as directory to read files from
# and the second one as sleep timer.

# test if both parameter are given
[[ -z $1 || -z $2 ]] && {
	echo "Usage: $0 <directory> <time>"
	echo "       directory: directory to take images from"
	echo "       time:      time between image change"
	exit
}

# test if directory is valid
[ -d $1 ] || { 
	echo "The directory $1 does not exist."
	exit
}

cd $1

while true
do
	files="$(ls)"
	echo "Files in $1:"
	echo "$files"

	for file in $files
	do
		# skipping files that don't exist anymore
		[ -f $file ] && {
			echo "Displaying $file"
			xwallpaper --center $file
			sleep $2
		}
	done
done
