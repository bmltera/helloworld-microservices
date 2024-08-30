#!/bin/bash

# call services and store responses
RESPONSE_1=$(curl -s "http://127.0.0.1:5000/hello")
RESPONSE_2=$(curl -s "http://127.0.0.1:5001/world")

# concatenate the strings
STRING="${RESPONSE_1} ${RESPONSE_2}"

# Output the concatenated string
echo "$STRING"
