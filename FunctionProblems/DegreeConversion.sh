#!/bin/bash -x
echo "degC-degF or degF-degC"
read -p "enter value and selected conversion mode from above: " number choice
F=$(((($number*9/5))+32))
C=$(((($number-32))*5/9))
function conv() {
	case $choice in
		degC-degF) echo "$F degF";;
		degF-degC) echo "$C degC";;
			*) echo "Invalid input";;
	esac
}
conv $choice
