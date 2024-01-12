#!/bin/bash
ID=$(id -u)
VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "ERROR: $2 Installing is failed"
    exit 1
else
    echo "$2 is Success"
fi
}
if [ $ID -ne 0 ]
then
    echo "ERROR: Please run the script with root access"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y

VALIDATE $? echo "Installing MySQL"

yum install git -y

VALIDATE $? echo "Installing Git"