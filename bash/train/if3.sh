#!/bin/bash

port=$(nmap -sT 192.168.100.123 | grep tcp |grep http |awk '{print $2}')
if [ "$port" == "open" ]
	then
		echo "$(date) httpd is ok !" >> /tmp/httpd_acc.log
	else
		/etc/rc.d/init.d/httpd restart &>/dev/null
		echo "$(date) httpd reboot!!" >> /tmp/httpd_err.log

fi
		
