#! /bin/bash

#use $[] to assign match expressions to var
var1=$[1 + 5]
echo $var1

#remainder modulus
echo $[100 % 45]

#use bc (bash calculator) to work with floating point numbers
#set the decimal place using scala
#scale=3
#bc is a separate program
#use bc in scripts like so
var2=$(echo "scale=4; 3.44 / 5" | bc)
echo the answer is $var2