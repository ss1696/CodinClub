#!/bin/bash 

#generating Random Bday's
for (( i=1; i<=50; i++ ))
do
  	date=" $(($RANDOM%2+1992))/$(($RANDOM%12+1))/$(($RANDOM%28+1)) " #'+%d-%m-%Y'
 	
	dateArray[(($i))]=$date
	
done

declare -A month
month=( [Jan]=0 [Feb]=0 [Mar]=0 [April]=0 [May]=0 [June]=0 [July]=0 [August]=0 [Sep]=0 [Oct]=0 [Nov]=0 [Dec]=0 )

value=( [1]=Jan [2]=Feb [3]=Mar [4]=April [5]=May [6]=June [7]=July [8]=August [9]=Sep [10]=Oct [11]=Nov [12]=Dec )


#getting the same month Bday's
for (( i=1; i<=50 ; i++ ))
do
	x=$(date -d "${dateArray[$i]}" '+%m')
	x=$(echo "$x" | bc)
	var=${month[${value[$x]}]}
	var=`expr $var + 1`
	month[${value[$x]}]=$var
done


for (( i = 1 ; i<= 12 ;i++))
do
	echo "${value[$i]} ${month[${value[$i]}]}"
done
