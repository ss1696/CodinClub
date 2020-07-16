#!/bin/bash
echo "enter number multiple of 10"
read number
if [ $number -eq 1 ]
then
        echo "Unit";
elif [ $number -eq 10 ]
then
        echo "Ten";
elif [ $number -eq 100 ]
then
        echo "Hundred";
elif [ $number -eq 1000]
then
        echo "Thousand";
elif [ $number -eq 10000 ]
then
        echo "Ten Thousand";
elif [ $number -eq 100000 ]
then
        echo "Lakh";
elif [ $number -eq 1000000 ]
then
        echo "Ten Lakh/Million";
elif [ $number -eq 1000000 ]
then
        echo "Crore";
elif [ $number -eq 1000000 ]
then
        echo "Ten Crore/Hundred Million";

else
        echo "this is not a number multiple of 10"
fi
