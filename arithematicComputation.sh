#!/bin/bash -x
read -p "Enter first number  : " a
read -p "Enter second number  : " b
read -p "Enter third number  : " c
value1=$((a+b*c))
value2=$((a*b+c))
value3=$(( c+(a/b) ))
