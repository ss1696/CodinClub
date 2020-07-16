#!/bin/bash -x

i=1
count=0

while [ $i -lt 11 ]
do
  array[((count++))]=$((RANDOM%900+100))              #get number
  i=$((i + 1))
done

echo ${array[@]}

# sorting the array

for (( k=0; k<11; k++ )) 
do
      
    for(( j=0; j<11-k-1; j++ )) 
    do
      
        if [ ${array[j]} -gt ${array[$((j+1))]} ] 
        then
            # swap 
            temp=${array[j]} 
            array[$j]=${array[$((j+1))]}   
            array[$((j+1))]=$temp 
        fi
    done
done
  
echo ${array[@]}  

echo "secondGreatest = ${array[8]}"

echo "secondSmallest = ${array[1]}"

