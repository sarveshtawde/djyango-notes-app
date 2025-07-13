#!/bin/bash
#

function is_true () {
	read -p "Enter name :" name
	read -p "Enter age :"  age

	if [[ $name == Sarvesh ]];
	then
		echo "Hello welcome"
		elif [[ $age -ge 25 ]];

	then
		echo "Hello youngster"
	else 
		echo "sorry"

	fi

}
is_true
