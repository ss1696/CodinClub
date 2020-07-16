#!/bin/bash




echo "enter an integer:"
read input

if [ $input -lt 1 ]
then
	echo "not allowed!"
	exit 1
fi

# find factors and prime

emp=0
count=0
flag=0
for ((i=2;i<$input;))
do
    
	if [ $(($input % $i)) -eq 0 ]
	then
      		factor=$i

  		for ((j=2;j<=$(($factor/2));))	
		do
      			flag=0
      			if [ $(($factor%$j)) -eq 0 ]	
			then
      				flag=1
      				break
      			fi
      			j=$(($j+1))
  		done
  		
		if [ $flag -eq 0 ]
		then
  			factArray[((emp++))]=$(($factor))
			count=1
 	 	fi
	fi

i=$(($i+1))
done

echo ${factArray[@]}  
	
if [ $count -eq 0 ]
then
	echo "no prime factors found except 1 and $input"
fi
