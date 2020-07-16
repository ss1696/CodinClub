#!/bin/bash
echo "Enter the number"
read num

check_prime() {
    current_number=$num
    flag=0
    i=2

    while [ $i -le $(($current_number / 2)) ]
    do
	var=$(($current_number % $i))
        if [[ $var -eq 0 ]]
        then
            flag=1		
        fi
        i=$(($i + 1))
    done

    if [[ $flag -eq 0 ]]
    then 
		echo "$current_number is a prime no "
    else 
		echo "$current_number is not a prime no"
    fi
}

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


check_prime $num

check_palindrome $num
			

