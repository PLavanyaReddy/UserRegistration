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
