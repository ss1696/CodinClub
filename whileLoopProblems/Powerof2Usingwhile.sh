#!/bin/bash 
echo "enter number for limit of power of two"
read n
i=0
powerOfTwo=1
while [ $i -le $n ] && [ $powerOfTwo -le 256 ]
do
  echo "2^$i = $powerOfTwo"
  powerOfTwo=$(($powerOfTwo*2))
  i=$(($i+1))
done
