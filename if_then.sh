#! /bin/bash

#if command
#then
#   commands
#fi

#the command must have an exit code of 0 in order for the then to execute

if pwd
then
    echo "it worked"
fi

if cmdNotFound
then
    echo "it worked again"
fi

echo "last command, skipped previous echo"

#if then else
if grep intellij pwd
then
    echo "intellij found in path"
else 
    echo "not found"
fi

#else if
if pwd
then
    echo "1st if works"
elif grep
    
then echo "2nd elif"
fi 

#use test to evaluate boolean values in the if
if test "value"
then
    echo "test working"
fi

#test match conditions
if test $[ 4 == 4]
then
    echo "4 equals 4"
fi

#use [] to test booleans
if [ 4 > 5]
then
    echo "true"
else
    echo "false"
fi

#check empty string
val1=''
if [ -z $val1 ]
then
    echo "non empty string"
else
    echo "empty string"
fi

#use (()) for more complex math

#use [[]] for string comparison with pattern matching