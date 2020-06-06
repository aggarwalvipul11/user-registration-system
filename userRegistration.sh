#!/bin/bash -x

namePattern="^[A-Z][a-z]{3,}"
emailPattern="^[A-Za-z0-9]*[\-\+\.0-9]*[a-zA-z0-9]+[@][a-z0-9]+[.]+[a-z]*[.]*[a-z]{2,3}$"

function condCheck() {
	if [[ $1 =~ $2 ]]
	then
		echo "valid"
	else
		echo "invalid"
	fi
}

read -p "Enter your first name " fName
condCheck $fname $namePattern

read -p "Enter your last name " lName
condCheck $lname $namePattern

read -p "Enter your email id " validEmail
condCheck $validEmail $emailPattern
