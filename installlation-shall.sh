#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "Exit status:$1"
    echo "What are you doing: $2"
}

if [ $userid -ne 0]
then 
    echo "please run this script with root access."
    exitt 1 
else
    ccho "you are super user."
if

dnf install mysql -y
VALIDATE $? "installing MYSQL"

dnf install git -y 
VALIDATE $? "installing MYSQL"
then