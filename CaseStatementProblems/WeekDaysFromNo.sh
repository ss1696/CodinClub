#!/bin/bash
echo "enter day number"
read Number
case "$Number" in
        1)      echo "$Number : SunDay";;
        2)      echo "$Number : MonDay";;
        3)      echo "$Number : TuesDay";;
        4)      echo "$Number : WednesDay";;
        5)      echo "$Number : ThursDay";;
        6)      echo "$Number : FriDay";;
        7)      echo "$Number : SaturDay";;
esac

