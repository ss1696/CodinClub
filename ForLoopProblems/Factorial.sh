
#!/bin/bash -x

echo "Enter a number for factorial"
read num1 

factorial=1

for (( i=1; i<=$num1; i++))
do 
	factorial=$(( factorial * i ))
	echo "factorial of $num1 = $factorial "
done 

