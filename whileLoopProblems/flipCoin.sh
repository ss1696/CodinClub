declare -A toss
toss[head]=0
toss[tail]=0

echo ${toss[@]}

count=0

while  [ ${toss[head]} -ne 11 ] && [ ${toss[tail]} -ne 11 ] 
do

	#storing random generated no in array where 1 is for head and 2 is for tail
	((count++))
	fareToss[$count]=$(($RANDOM%2+1))
	case ${fareToss[$count]} in 
				1)toss[head]=$((${toss[head]}+1));;
				2)toss[tail]=$((${toss[tail]}+1));;
	esac
done

echo ${fareToss[@]}
echo ${toss[head]}
echo ${toss[tail]}

if [ "${toss[head]}" -eq 11 ]
then
	echo "Head Wins!!"

elif [ "${toss[tail]}" -eq 11 ]
then
	echo "Tail Wins!!"
fi

