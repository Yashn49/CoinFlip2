#!/bin/bash
echo "welcome o flip coin simulator program"
read -p "enter a number you want loop to run: " num
count=0
count1=0
isHeads=0;
isTails=1;
declare -A flipval
for(( i=1;i<=num;i++ ))
do
 coinFlip=$((RANDOM%2))
 if [ $coinFlip -eq 0 ]
 then
  flipval[$i]={$i:"H"}
 else
  flipval[$i]={$i:"T"}
 fi
done
echo ${!flipval[@]}
echo ${flipval[@]}
