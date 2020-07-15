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
mobilepat="^[0-9]{1,}[ ][0-9]{10}$"
read -p "Enter mobile number" mobile
if [[ $mobile =~ $mobilepat ]];
then
        echo "Valid mobile number";
else
        echo "Invalid mobile number";
fi
pwd_rule1="^.{8,}$"
pwd_rule2="[[:upper:]]{1,}"
pwd_rule3="[0-9]{1,}"
pwd_rule4="^([a-zA-Z0-9]*)[@!#%<>()/?&*]{1}([a-zA-Z0-9]*)$";
read -p "Enter the password" password
if [[ $password =~ $pwd_rule1 ]];
then
        if [[ $password =~ $pwd_rule2 ]];
        then
                if [[ $password =~ $pwd_rule3 ]];
                then
                        if [[ ! $password =~ $pwd_rule4 ]];
                        then
                                echo "Password is valid";
                        else
                                echo "Password should contain exactly one special character";
                        fi
                else
                        echo "Password should contain atleast one numeric number";
                fi
        else
                echo "Password should contain atleast one uppercase letter";
        fi
else
        echo "Password should contain a minimum of 8 characters";
fi
