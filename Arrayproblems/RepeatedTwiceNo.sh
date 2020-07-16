#!/bin/bash 


echo "This program prints the no having same digit between 1 to 100."

for (( i=1; i<=100; i++ ))
do
	var=$(($i%11))
	if [ $var -eq 0 ]
	then
		echo $i
	fi

done
