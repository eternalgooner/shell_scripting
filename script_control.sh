#! /bin/bash

#your script can be designed to handle signals from the shell
#use the trap command to declare which signals can be handled by the script
#during the loop, try to Ctrl + C to stop the process
trap "echo 'Ctrl + C has been trapped'" SIGINT
count=1
while [ $count -le 10 ]
do 
    echo "loop #$count"
    sleep 1
    count=$[$count +1]
done
echo "end of script"

#use trap to catch the EXIT signal to process something before exiting
trap "echo 'Goodbye..." EXIT
while [ $count -le 5 ]
do 
    echo "loop #$count"
    sleep 1
    count=$[$count +1]
done

#remove a trap mid script using 'trap - SIGINT'