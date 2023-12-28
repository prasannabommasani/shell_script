#!/bin/bash

NUMB1=$1
NUMB2=$2
NUMB3=$3
DATE=$(date)

echo  " Script satrted at $DATE"
echo " SCRIPT NAME IS $0"
echo " Arguments passed : $@"
echo "how many arguments passed : $#"
SUM=$(($NUMB1+$NUMB2+$NUMB3))
echo " sum of given numbers are  $SUM"