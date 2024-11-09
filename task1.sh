#!/bin/bash

#task 1: print the HTTP error code of guvi.in
url="guvi.in"
http_code=$(curl -o /dev/null -s -w "%{http_code}\n" "$url")

# Print the success/failure message based on http_code value above
if [ "$http_code" -eq 200 ]; then
	echo "Success: Received HTTP status code $http_code"
else
	echo "Failure: Received HTTP status code $http_code"
fi