#!/bin/bash -x

function condCheck() {
	if [[ $1 =~ $2 ]]
	then
		echo "valid"
	else
		echo "invalid"
	fi
}

read -p "Enter your first name " fName

namePattern="^[A-Z][a-z]{2,}"
condCheck $fName $namePattern

