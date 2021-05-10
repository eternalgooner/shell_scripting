#! /bin/bash

#cmd line args passed can be accessed using $1 $2 etc.

echo "arg 1 passed: $1"
echo "arg 2 passed: $2"

#$0 for the script name
echo "script name: $0"

#$# for num args passed
echo "num args: $#"

#$* to treat all args as 1 long string
echo "all args as one: $*"

#$@ to treat all args as separate, can iterate over them
echo "all args individually: $@"
for word in $@
do
    echo $word
done