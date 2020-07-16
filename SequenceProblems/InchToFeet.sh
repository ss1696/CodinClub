#!/bin/bash

read -p "Enter the no of inch to change in feet" inch

feet=$( echo 2 k $inch 12 / -p | dc )

echo $inch "in = " $feet "ft"

