#!/bin/zsh
exit_code=0
if [ $(id -u) != "0" ]; then
    echo "You must be the superuser to run this script" >&2
	exit_code=1
	exit $exit_code
elif [ $# -ge "1" ]; then
	while [ $# != "0" ]; do
		if pacman-key -r $1 && pacman-key -f $1; then
			pacman-key --lsign-key $1
		else
			if [ $# -gt "1" ]; then
				echo "Invalid key entered, moving on to next key" >&2
				exit_code=1
			else
				echo "Invalid key, please enter a valid key" >&2
				exit_code=1
				exit $exit_code
			fi
		fi

		if [ $# -gt "1" ]; then
			shift
		else
			exit $exit_code
		fi
	done
fi
echo "Insert keys to sign" >&2
exit_code=0
exit $exit_code

#To Do:
#Compact code further if possible. Works as is
