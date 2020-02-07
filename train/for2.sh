#!/bin/bash
cd /root/sh

ls *.sh > ls.log

y=1

for i in $(cat ls.log)
	do
		echo $y
		y=$(($y+1))
	done

