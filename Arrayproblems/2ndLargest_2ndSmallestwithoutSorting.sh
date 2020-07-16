#!/bin/bash -x

i=1
count=0

while [ $i -lt 11 ]
do
  array[((count++))]=$((RANDOM%900+100))              #get number
  i=$((i + 1))
done

echo ${array[@]}

largest=${array[0]}
secondGreatest='unset'
smallest=${array[0]}
secondSmallest='unset'

# find Second Largest element in array

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${array[i]}
  fi
done

echo "secondGreatest = $secondGreatest"


#find Second Smallest element in array

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${array[i]}
  elif (( ${array[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${array[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${array[i]}
  fi
done

echo "secondSmallest = $secondSmallest"
