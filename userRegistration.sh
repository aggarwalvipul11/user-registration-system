#!/bin/bash -x

namePattern="^[A-Z][a-z]{3,}"
emailPattern="^[A-Za-z0-9]*[\-\+\.0-9]*[a-zA-z0-9]+[@][a-z0-9]+[.]+[a-z]*[.]*[a-z]{2,3}$"
phoneNumberPattern="^[0-9]{2}(\s)[0-9]{10}$"
passwordPattern="^[a-zA-Z]{8,}*[A-Z]{1,}*[0-9]{1,}+[*.! @#$%^&(){}[]:;<>,.?/~_+-=|\]$"

function condCheck() {
	if [[ $1 =~ $2 ]]
	then
		echo "valid"
	else
		echo "invalid"
	fi
}

read -p "Enter your first name: " fName
condCheck $fName $namePattern

read -p "Enter your last name: " lName
condCheck $lName $namePattern

read -p "Enter your email id: " validEmail
condCheck $validEmail $emailPattern

read -p "Enter your phone number: " validPhoneNumber
condCheck $validPhoneNumber $phoneNumberPattern

read -p "Enter your password(Must have atleast 8 characters, 1 Uppercase letter, 1 Number, 1 Special Character): " vaildPassword
condCheck $validPassword $passwordPattern
