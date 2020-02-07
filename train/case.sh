#!/bin/bash

echo 'You want to shanghai, please input "1"'
echo 'You want to shenzhen, please input "2"'
echo 'You want to guangzhou, please input "3"'

read -t 30 -p "please input your choose :" cho

case $cho in

	"1")
		echo "shanghai"
		;;
	"2")
		echo "shenzhen"
		;;
	"3")
		echo "guangzhou"
		;;
	*)
		echo "warning!!"
		;;
esac


		

