#!/bin/bash
echo "Welcome to user registration"
read -p "Enter your first name:" name
pat="^([[:upper:]]){1}[[:lower:]]{2,}$"
if [[ $name =~ $pat ]];
then
        echo "Firstname is valid";
else
        echo "Firstname is invalid";
	echo "Firstname should start with a capital letter and has minimum three  letters"
fi
