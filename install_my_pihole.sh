#!/bin/bash

## CONSTANTS

## FUNCTIONS
# $1, string users first name
# $2, string users last name
# $3, string users username
# $4, string users password

function confirmName() {
  echo "So your full name is $1 $2, correct? [yes|no] (case senstive)";
  read CONFIRM; 

  if [[ $CONFIRM != "yes" ]]; then
    echo "Please enter 'yes' to confirm.";
    exit 1;
  fi;
}


function confirmUser() {
  echo "So your username will be $3, correct? [yes|no] (case senstive)";
  read CONFIRM; 

  if [[ $CONFIRM != "yes" ]]; then
    echo "Please enter 'yes' to confirm.";
    exit 1;
  fi;
}

function confirmPassword() {
  echo "So your password will be $4, correct? [yes|no] (case senstive)";
  read CONFIRM; 

  if [[ $CONFIRM != "yes" ]]; then
    echo "Please enter 'yes' to confirm.";
    exit 1;
  fi;
}

## GLOBAL VARS
FIRST_NAME=""
LAST_NAME=""

## LOGIC
echo "What is first name?";
read;
FIRST_NAME=$REPLY

echo "What is last name?";
read;
LAST_NAME=$REPLY

confirmName $FIRST_NAME $LAST_NAME

echo "What will be your admin username?";
read;
USER_NAME=$REPLY

confirmUser $USER_NAME

echo "What will be your admin password?";
read;
PASSWORD=$REPLY

confirmPassword $PASSWORD
