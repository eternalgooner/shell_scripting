#! /bin/bash

#created functions to resuse in scripts
#1 way to declare using function keyword
function myFunc {
    echo "my func"
}

myFunc

#another way to declare using ()
myFunc2() {
    echo "my func 2"
}

myFunc2

#functions return values - default value is last commands exit status
#$? show return status
myFunc3() {
    ls -f badFile
}

myFunc3
echo $?

#you can assign return values from functions
myFunc4() {
    echo 23
}

result=$(myFunc4)
echo $result

#you can pass args to functions
myFunc5() {
    echo "args: $1 & $2"
}

myFunc5 99 88

#arrays can be tricky and need some assembly/reassembly

#you can use funcs from different files using the source cmd (or . for short)
#at the top of your script put
#. ./myFuncs