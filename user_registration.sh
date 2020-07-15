#!/bin/bash
echo "Welcome to user registration"
read -p "Enter your first name:" name
read -p "Enter your first name:" lastname
namepat="^([[:upper:]]){1}[[:lower:]]{2,}$"
if [[ $name =~ $namepat ]];
then
        echo "Firstname is valid";
else
        echo "Firstname is invalid";
	echo "Firstname should start with a capital letter and has minimum three  letters"
fi
if [[ $lastname =~ $namepat ]];
then
        echo "Lastname is valid";
else
        echo "Lastname is invalid";
        echo "Lastname should start with a capital letter and has minimum three letters"
fi
emailpat="^[A-Za-z]{1}[A-Za-z0-9._+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$"
read -p "enter mail" mail
if [[ $mail =~ $emailpat ]];
then
        echo "The email is valid";
else
        echo "The email is invalid";
fi
