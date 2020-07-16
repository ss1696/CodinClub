#!/bin/bash

read -p "Enter the no of feet to change in meter" feet

meter=$( bc -l <<<"0.3048*$feet" )
echo $feet "ft = " $meter "m"

