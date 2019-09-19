#!/bin/bash
# Authors : Ian Peterson
# Date: 9/18/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Please provide a file name:"
read fileName
echo "Please provide a regular expression for phone numbers:"
read regEx1
grep -c $regEx1 $fileName
echo "Please provide a regular expression for phone numbers with area code 303:"
read regEx2
grep -o $regEx2 $fileName
echo "Please provide a regular expression for emails:"
read regEx3
grep -o $regEx3 $fileName >> email_results.txt

#grep -c '\(([0-9]\{3\})\|[0-9]\{3\}\)[-]\+[0-9]\{3\}[-]\+[0-9]\{4\}' regex_practice.txt
#or
#egrep -c '[0-9]{3}-[0-9]{3}-[0-9]{4}' regex_practice.txt

#grep -c '.*\@.*\.*' regex_practice.txt

#grep -o '^303.\{9\}' regex_practice.txt

#grep -o '^.*@geocities.com' regex_practice.txt >> email_results.txt 
