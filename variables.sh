#! /bin/bash

#access ENV VARs using $
echo "PATH var is: $PATH"
echo "current user: $USER"
echo "user ID: ${UID}"

#can declare local vars a few ways
var1="my var"

#limit of 20 chars for user vars
numVar=1234

#variables are case sensitive & _ is allowed
my_var="newVar"

#no spaces allowed between =
#not valid
#newVar = "invalid"

#variables only exist until the shell script terminates

#when referencing a var use the $
#when changing a var don't use $
var2="value"
var3=$var2
var2="newVal"

#assign values to vars from commands in 2 ways
# 1. use backtick
var4=`date`
echo $var4

# 2. use $()
var5=$(date)
echo $var5