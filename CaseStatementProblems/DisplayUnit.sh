#!/bin/bash
echo "enter number multiple of 10"
read number
case "$number" in
        1)    		echo "$number : Unit";;
        10)      	echo "$number : Ten";;
        100)      	echo "$number : Hundred";;
        1000)      	echo "$number : Thousand";;
       	10000)      	echo "$number : Ten Thousand";;
        100000)	        echo "$number : Lakh";;
        1000000)	echo "$number : Ten Lakh/Million";;
	10000000)	echo "$number : Crore"
esac
