#!/bin/bash
echo "enter day no :"
read d
echo "enter month no"
read m
if [[ $m -eq 4 || $m -eq 5 ]]
then
	echo "true"

elif [[ $m -eq 3 && $d -gt 19 && $d -lt 32 ]]
then
	echo "true"
elif [[ $m -eq 6 && $d -lt 21 ]]
then
        echo "true"
else
	echo "false"
fi
