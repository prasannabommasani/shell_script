#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$NUMBER1+ $NUMBER2

echo "sum is $SUM"

if [ $NUMBER1 -gt $NUMBER2 ]
then
    echo " $NUMBER1 is greaterthan $NUMBER2"
else
    echo " $NUMBER1 is less than $NUMBER2"

fi
