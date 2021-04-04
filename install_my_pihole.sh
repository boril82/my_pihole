#!/bin/bash

## CONSTANTS

## FUNCTIONS
function confirmName() {
echo "So your full name is $1 $2?"
}

## GLOBAL VARS
FIRST_NAME=""
LAST_NAME=""

## LOGIC
echo "What first name?";
read;
FIRST_NAME=${REPLY}

rememberFirstName $FIRST_NAME

echo "What last name?";
read;
LAST_NAME=${REPLY}

rememberLastName $LAST_NAME
