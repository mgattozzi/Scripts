#Fixes problem to keyboard locking up with xmonad and xmobar
#Cats the file from the pid in proc to unblock the problem

#!/bin/zsh
PID=$(ps -ef | grep xmonad | awk '{ print $2 }' | head -n 1)
FILE=$(ls /proc/$PID/fd | tail -n 1)
cat /proc/$PID/fd/$FILE > /dev/null

