#!/bin/bash -x

read -p "Enter the no to check whether it is prime or not" num 

for (( i=2; i<=$(($num/2)); i++ )) 
do 
	result=$(( $num % $i ))
	if [ $result -eq 0 ] 
	then 
		echo "Not a Prime no."
	else
		echo "Prime number"
	fi

	
done 
			
