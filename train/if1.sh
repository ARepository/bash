#!/bin/bash
#the program about if

rate=$(df -h | grep /dev/sda5 | awk '{print $5}' | cut -d "%" -f1)

if [ $rate -ge 80 ] 
	then
	echo "warning!!"
fi
