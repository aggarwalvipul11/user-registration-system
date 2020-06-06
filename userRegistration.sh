#!/bin/bash -x

namePattern="^[A-Z][a-z]{3,}"

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
