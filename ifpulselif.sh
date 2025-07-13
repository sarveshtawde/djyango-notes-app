#!/bin/bash

read -p "Enter a number: " num
read -p "enter percentange: " per

if [[ $num == 7 ]];
then 
	echo "Welcome MS"

elif [[ $per -ge 90 ]];
then
	echo "very good ms"

else
	echo "Exit"

fi
