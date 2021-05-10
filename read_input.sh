#! /bin/bash

#read input from user
#use -p for inline prompt
read -p "Please enter your name: "

#use -n to excape newline at end of echo so input appears on same line
echo -n "enter your name: "
read name
echo "hello $name"

#when no var provided, input gets assigned to REPLY var by default
read -p "input will get assigned to REPLY by default: "
echo "REPLY: $REPLY"

#you can supply multiple inputs to multiple vars
read -p "enter full name: " first last
echo $first $last

#use -t flag to set timeout seconds to wait for input
if read -t 5 -p "enter name within 5 seconds..." name
then
    echo "$name you made it on time"
else
    echo "you were too slow"
fi

#use -n1 to only accept first char entered

#read from file
#each call to the read command reads 1 line of text
#when no lines left read exits with non-zero exit status
#common approach is to use cat & pipe into read
count=1
cat testFile.txt | while read line
do
    echo "line $count: $line"
    count=$[ $count + 1]
done
echo "finished processing file"