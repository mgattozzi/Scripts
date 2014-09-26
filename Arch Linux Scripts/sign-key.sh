#!/bin/zsh
#To Do:
#Error handling with keys in pacman-key
#
if [ $(id -u) != "0" ]; then
    echo "You must be the superuser to run this script"
    exit 1
elif [ $# -ge "1" ]; then
	while [ $# != "0" ]; do
		pacman-key -r $1
		pacman-key -f $1
		pacman-key --lsign-key $1
		if [ $# -gt "1" ]; then
			shift
		else
			exit 0
		fi
	done
fi
echo "Insert keys to sign"
exit 1
