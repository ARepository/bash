#!/bin/bash

read -t 30 -p "input name:" name
read -t 30 -p "input num:" num
read -t 30 -p "input password:" pass

if [ ! -z "$name" -a ! -z "$num" -a ! -z "$pass" ]
	then
	y=$(echo $num | sed 's/[0-9]//g')

	if [ -z "$y" ]
	then
	for (( i=1;i<=$num;i=i+1 ))
	do
	useradd $name$i &>/dev/null
	echo $pass | passwd --stdin "$name$i" &>/dev/null
	done
fi
fi

