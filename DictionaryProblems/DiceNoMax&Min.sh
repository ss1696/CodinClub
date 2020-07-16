#!/bin/bash 
shopt -s extglob

declare -A dice 
dice=( [one]=0 [two]=0 [three]=0 [four]=0 [five]=0 [six]=0 )

count=0
while [ ${dice[one]} != 10 ] && [  ${dice[two]} != 10 ] && [ ${dice[three]} != 10 ] && [ ${dice[four]} != 10 ] && [ ${dice[five]} != 10 ] && [ ${dice[six]} != 10 ]
do
	((count++))
	roll[$count]=$((RANDOM%6+1))

	case ${roll[$count]} in
		1)dice[one]=$((${dice[one]}+1));;
		2)dice[two]=$((${dice[two]}+1));;
		3)dice[three]=$((${dice[three]}+1));;
		4)dice[four]=$((${dice[four]}+1));;
		5)dice[five]=$((${dice[five]}+1));;
		6)dice[six]=$((${dice[six]}+1));;
	esac
done 

echo ${!dice[@]}

echo ${dice[@]}

max=${!dice[one]}
min=${!dice[one]}


for i in ${!dice[@]}
do
	if [[ ${dice[$i]} -gt ${dice[$max]} ]]
	then
		max=$i
	fi

	if [[ ${dice[$i]} -lt ${dice[$min]} ]]
	then
		min=$i
	fi
done


echo ${dice[@]}

echo "maximum arrived is $max"
echo "minimum arrived is $min"

