#!/bin/bash
echo "enter lower limit"
read num1
echo "upper limit"
read num2
for((j=num1; j<=num2; j++))
do
	flag=0
	for((i=2; i<=j/2; i++))
	do
		if [ $((j%i)) -eq 0 ]
		then
	  		((flag++))
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo "$j is prime"
	fi
done
