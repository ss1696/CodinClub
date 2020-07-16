#!/bin/bash -x

#here 1 is for head and 2 is for tail
flip=$(( RANDOM%2+1 ))

if [ $flip -eq 1 ]
then 
	echo "it's a head"
else 
	echo "it's a tail"
fi 

