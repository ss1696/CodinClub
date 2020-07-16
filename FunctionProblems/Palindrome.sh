#!/bin/bash
echo "Enter the number"
read num

check_palindrome() {

	n=$num
	rev=0
	while [ $num != 0 ]
	do
		 dig=$(($num%10))
		 rev=$(($rev*10+$dig))
		 num=$(($num/10)) 
	done
	if [ $n == $rev ] 
	then
		echo "The number $n is palindrome" 
	else
		echo "The number $n is not a palindrome" 	
	fi

}

if [ $num -lt 100 ]
then
        check_palindrome $num
else
        echo "not allowed!"
fi


