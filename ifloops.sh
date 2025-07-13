#!/bin/bash

read -p "enter your name :" yourname

if [[ $yourname == "Sarvesh" ]]
then
	echo "welcome $yourname"
else
	echo "not authorized user"

fi
