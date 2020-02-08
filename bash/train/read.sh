#!/bin/bash
# program
read -t 30 -p "Please input your name:" name
echo "Name is $name"

read -s -t 30 -p "Please enter your age:" age
#-s选项隐藏输入
echo -e "\n"
echo "Age is $age"

read -n 1 -t 30 -p "Please select your gender[M/F]:" gender
#使用"-n 1" 选项只接受一个输入字符就会执行(都不用回车)
echo -e "\n"
echo "sex is $gender"
