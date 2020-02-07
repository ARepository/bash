#!/bin/bash
#this is a program of delete user

cat /etc/passwd |grep bin/bash |grep home |cut -d ":" -f1 > /tmp/user.log 

for user in $(cat /tmp/user.log)
	do
		if [ ! $user == "root" ];then
		userdel -r $user &>/dev/null
		fi
	done 
