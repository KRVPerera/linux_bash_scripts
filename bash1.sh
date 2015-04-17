#!/bin/bash
echo "hello, $USER. I wish to list some files of yours"
echo "listing files in the current directory, $PWD"
echo "${USER}on-Raid"
ls #list files

X=3
Y=4
empty_string=""
if [ $X -lt $Y ]
then
	echo "\$X=${X}, which is smaller \$Y=${Y}"
fi

if [ -n "$empty_string" ]; then
	echo "empty string is non-empty"
fi

if [ -e "${HOME}/.fvwmrc" ]; then
	echo "you have a .fvwrc file"
	if [ -L "${HOME}/.fvwmrc" ]; then
		echo "it's a symbolic link"
	elif [ -f "${HOME}/.fvwmrc" ]; then
		echo "it's a regular file"
	fi
else
	echo "you have no ,fvwmrc file"
fi

#for X in $(ls -q)
#do
#	echo "${X}.jpg"
#done

$I=0
for X in *.jpg
do	
	rename "$X" "${I}.jpg"
	#grep -L 'echo' "$X"
	I = I + 1
done
