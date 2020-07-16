#!/bin/bash
read -p "enter year: " x;
if [ $(($x % 4)) -eq 0 ]
then
	if [ $(($x % 100)) -eq 0 ]
	then
		if [ $(($x % 400)) -eq 0 ]
		then
			echo "leap year"
		else
			echo "not leap year"
		fi
	fi
fi
