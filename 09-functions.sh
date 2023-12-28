#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo : "ERROR : Please run this script with root user"
    exit 1
else
    echo " You are root user"
fi

VALIDATE() {

if [ $1 -ne 0 ]
then
    echo " $2 is failed"
    exit 1
else  
    echo " $2 is success"
fi
}

yum install mysql -y
VALIDATE $? " installing mysql"

yum install git -y
VALIDATE $? " installing git"

