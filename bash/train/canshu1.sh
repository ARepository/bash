#!/bin/bash
for i in "$*"
#s*中的所有参数看成是一个整体,所以这个for循环只会循环一次
do
echo "The parameters is :$i"
done
x=1
for y in "$@"
#$@中的每个参数都看成是独立的所以"$@"中有几个参数,就会循环几次
 do
echo "THe parameter$x is :$y"
x=$(($x +1))
done
