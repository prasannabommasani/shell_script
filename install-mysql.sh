#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo : "ERROR : Please run this script with root user"
    exit 1
else
    echo " You are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo " Installing mysql is failed"
    exit 1
else  
    echo " Installing mysql is success"
fi