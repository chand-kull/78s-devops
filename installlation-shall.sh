#!/bin/bash

USERID=$(id -u)

VALIDATE() {
    echo "Exit status: $1"
    echo "What are you doing: $2"
}

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access."
    exit 1
else
    echo "You are superuser."
fi

dnf install mysql -y
VALIDATE $? "Installing MySQL"

dnf install git -y 
VALIDATE $? "Installing Git"
