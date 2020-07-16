
#!/bin/bash -x

count=0

read -p "Enter a number" a
read -p "Enter a number" b        
read -p "Enter a number" c        

value[((count++))]=$(( a+b*c ))
value[((count++))]=$(( a%b+c ))
value[((count++))]=$(( c+a/b ))
value[((count++))]=$(( a*b+c ))

echo ${value[@]}

max=${value[0]}
min=${value[1]}

for i in ${value[@]}
do
	if [[ $i -gt $max ]]   #max will get updated here
	then
		max=$i
	fi

	if [[ $i -lt $min ]]    #min will get updated here
	then
		min=$i
	fi

done 

echo "Maximum value among all three digit no is = $max"
echo "Minimum value among all three digit no is = $min"

