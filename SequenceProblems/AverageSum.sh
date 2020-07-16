#!/bin/bash -x

	read -p "Enter the size of number whose sum and average is required" num
i=1
sum=0

while [ $i -le $num ]
do
   num1=$(( RANDOM%100+1 ))              #get number
  sum=$((sum + num1))                        
  i=$((i + 1))
done

echo $sum

avg=$(echo 2 k $sum $num / -p | dc )

echo $avg

