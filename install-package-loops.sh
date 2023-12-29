#!/bin/bash

Id=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "scripted started at $TIMESTAMP" &>> LOGFILE
if [ $ID -ne 0 ]
then
    echo -e " $R ERROR: $N $Y please run script with root user $N"
else
    echo -e "$G You are the root user $N"
fi

for PACKAGE in $@
do
    yum list installed $PACKAGE &>> LOGFILE
    if [$? -ne 0 ]
    then    
        yum install $PACKAGE -y &>> LOGFILE
        VALIDATE $? "Installing 0f $package "
    else    
        echo -e "$R $PACKAGE already installed"
    fi
done

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e " $R ERROR: $N $Y $2 is Failed $N"
    else
        echo -e "$G SUCCESS : $N $Y $2 is success $N"
    fi
}
