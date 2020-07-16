#!/bin/bash
money=100
won=0
count=0
while [ $money -ne 200 ] && [ $money -ne 0 ]
do
  ((count++))
  flip=`shuf -i 1-2 -n1`
  if [ $flip -eq 1 ]
  then
    money=$(($money+1))
    won=$(($won+1))
  else
    money=$(($money-1))
  fi
  echo "$flip $won $money"
done
echo $count
