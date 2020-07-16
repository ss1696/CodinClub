#!/bin/bash -x
echo "enter the number for the linit of hermonic series"
read num

function harmonic() {
	sum=0.0
	for((i=1; i<=num; i++))
	do
		devision=`echo  1 $i | awk '{num1=$1;num2=$2; print num1/num2}'`
		sum=`echo  $sum $devision | awk '{num1=$1;num2=$2; print num1+num2}'`
	done
	echo $sum
}
harmonicNumber=$( harmonic $num )
echo $harmonicNumber
