#!/bin/bash
echo "enter count of number want to put"
read num
echo "enter lower range"
read lowerRange
echo "enter upper range"
read upperRange
echo "---------------------"
for ((i=0; i<num; i++ ))
do
	arr[$i]=`echo $(seq $lowerRange $upperRange | shuf -n 1)`
	#we can also use for -10 to 10
	# arr[$i]=`echo $((RANDOM % 21 - 10))`
done
echo ${!arr[@]}
echo ${arr[@]}
echo "----------------------"
found=0
for (( i=0; i<num-2; i++ ))
do
	for (( j=i+1; j<num-1; j++ ))
	do
		for (( k=j+1; k<num; k++ ))
		do
			if [[ $((${arr[$i]}+${arr[$j]}+${arr[$k]})) -eq 0 ]]
			then
			        ((found++))
				echo "set no. $found = " ${arr[$i]}  ${arr[$j]}  ${arr[$k]}
			fi
		done
	done
done
if [[ $found -eq 0 ]]
then
	echo "no set found"
fi

