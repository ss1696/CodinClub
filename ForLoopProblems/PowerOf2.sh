#!/bin/bash -x


num=$1
#read -p "Enter the no to which the power of 2 table required" num

for (( i=0; i<=$((num)); i++))
do
#       echo "2 to the power $i =" "((2^$i))" | bc
        var=$((2**$i))
         echo "2^$i =" "$var" | bc
done


