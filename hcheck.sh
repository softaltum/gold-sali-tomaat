#!/bin/bash

clear

str="	Hi There"
echo $str
str1=$(cat /proc/meminfo| grep -i memtotal|awk '{print $2}')
x=$((str1/1048756)) 
echo $x
str2=`cat /proc/meminfo | grep -i memavailable|awk '{print $2}'`
y=$((str2/1048756))
printf "\n"
printf "\n"
echo $str1
echo $str2
printf " Total Memory is => %.2f" $x 
printf "\n"
printf " Available Memory is => %.2f\n" $y

z=$((x/y*100))
printf " Percentage is => %.2f\n" $z
printf "\n"
