#!/bin/bash -x

dice1=$((RANDOM%6+1))
dice2=$((RANDOM%6+1))
	
diceSum=$(( dice1+dice2 ))
echo $diceSum

