#!/bin/bash
#判断用户输入的是什么文件

read -p "Please input a filename:" file
#接收键盘的输入,并赋值变量file

if [ -z "$file" ]
#判断file变量是否为空
then
echo "Error, Please input a filename"
exit 1
elif [ ! -e "$file" ]
#判断file的值是否存在
then
echo "your input is not a file"
exit 2
elif [ -f "$file" ]
#判断file的值是否为普通文件
then
echo "$file is regulare file"
elif [ -d "$file" ]
#判断file的值是否为普通文件
then
 	echo "$file is a directory!"
else
echo "$file is an other file!"
fi
