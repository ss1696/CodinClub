#!/bin/bash -x
echo "enter day number"
read dayNumber
if [ $dayNumber -eq 1 ]
then
        echo "SunDay";
elif [ $dayNumber -eq 2 ]
then
        echo "MonDay";
elif [ $dayNumber -eq 3 ]
then
        echo "TuesDay";
elif [ $dayNumber -eq 4]
then
        echo "WednesDay";
elif [ $dayNumber -eq 5 ]
then
        echo "ThrusDay";
elif [ $dayNumber -eq 6 ]
then
        echo "Friday";
elif [ $dayNumber -eq 7 ]
then
        echo "SaturDay";
else
        echo "this is not day number"
fi
