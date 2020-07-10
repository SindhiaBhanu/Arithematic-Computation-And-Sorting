#!/bin/bash -x
declare -A dictionary
read -p "Enter first number  : " a
read -p "Enter second number  : " b
read -p "Enter third number  : " c
value1=$((a+b*c))
value2=$((a*b+c))
value3=$(( c+(a/b) ))
value4=$(( (a%b)+c ))
for((i=1;i<5;i++))
do
        dictionary[$i]="$((value$i))"
done
for((i=1;i<5;i++))
do
        resultArray[$i]=${dictionary[$i]}
done
echo ${resultArray[@]} | awk 'BEGIN{RS=" ";} {print $1}' | sort
