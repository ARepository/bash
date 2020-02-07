#!/bin/bash

date=$(date +%y%m%d)
size=$(du -sh /etc)


if [ -d /tmp/dbback ]
	then
		echo "Date is : $date" > /tmp/dbback/db.txt
		echo "size is : $size" >> /tmp/dbback/db.txt
		cd /tmp/dbback
		tar -zcf etc_$date.tar.gz /etc db.txt &>/dev/null
		rm -rf /tmp/dbback/db.txt
	else
		mkdir /tmp/dbback
		echo "Date is : $date" > /tmp/dbback/db.txt
		echo "size is : $size" >> /tmp/dbback/db.txt
		cd /tmp/dbback
		tar -zcf etc_$date.tar.gz /etc db.txt &>/dev/null
		rm -rf /tmp/dbback/db.txt
fi
