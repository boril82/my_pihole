#!/bin/bash

## CONSTANTS

## FUNCTIONS
# $1, string users first name
# $2, string users last name

function confirmName() {
  echo "So your full name is $1 $2?"
}

## GLOBAL VARS
FIRST_NAME=""
LAST_NAME=""

## LOGIC
echo "What is first name?";
read;
rememberFirstName $REPLY

echo "What is last name?";
read;
rememberLastName $REPLY


