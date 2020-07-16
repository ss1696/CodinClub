#!/bin/bash -x
echo "Press 1 for Feet to Inch"
echo "Press 2 for Feet to Meter"
echo "Press 3 for Inch to Feet"
echo "Press 4 for Meter to Feet"
read choice
case "$choice" in
	1)
		echo "Feet to Inch"
		echo "enter feet"
		read feet
		inch=$(( $feet*12 ))
		echo "$feet feet = $inch inch"
		;;
	2)
		echo "Feet to Meter"
		echo "enter Feet"
		read feet
		a=0.3048
		meter=`echo  $a $feet | awk '{num1=$1;num2=$2; print num1*num2}'`
		echo "$feet feet = $meter meter"
		;;
	3)
		echo "Inch to Feet"
		echo "enter inch"
		read inch
		a=0.0833333
		feet=`echo  $a $inch | awk '{num1=$1;num2=$2; print num1*num2}'`
		echo "$inch inch = $feet feet"
;;
	4)
		echo "Meter to Feet"
		echo "enter meter"
		read meter
		a=3.28084
		feet=`echo  $a $meter | awk '{num1=$1;num2=$2; print num1*num2}'`
		echo "$meter meter = $feet feet"
		;;
esac
