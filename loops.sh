#! /bin/bash

#for loop
for var in Dublin Wicklow Meath
do echo $var
done

#for line in file
file="testFile.txt"
for line in $(cat $file)
do echo "line: " $line
done

#c style for loop
for (( i = 0; i < 10; ++i )){
    echo $i
}

#while
counter=5
while (( $counter > 0))
do
    echo "do while > 0"
    counter=$[ $counter - 1]
done

#use break to exit the loop early

#use continue to skip current iteration