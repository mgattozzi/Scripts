#!/bin/zsh
echo Mounting SD Card
sudo mount /dev/mmcblk0p1 /mnt
cd /mnt/DCIM
echo Moving Photos to ~/Photos/.tmp
sudo mv *NIKON/* ~/Photos/.tmp
cd ~/Photos/.tmp
echo Unmounting SD Card
sudo umount /mnt
echo Changing Photo permissions
sudo chown michael *
sudo chgrp michael *
sudo chmod 764 *
echo Script Completed
