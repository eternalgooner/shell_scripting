#! /bin/bash

#background processes run without STDOUT, STDIN, STDERR on a terminal session
#bg process shows on ps cmd
#to run a script in the background use '&' at the end of the command
#./background_script.sh &
#this will output the job number & PID on screen

counter=1
while [ $counter -lt 10 ]
do 
    echo "count: $counter"
    counter=$[ $counter + 1 ]
done

#a background job relies on the terminal session it was opened by to remain open
#if you want to run a bg job and exit the terminal, use nohup cmd with '&'
# nohup ./backgroundJob &

#you can start, stop & continue bg jobs
#Ctrl + Z to stop a job
#bg n to continue a job (n being the job number)

#you can give a priority to the job using nice
#nice -n 10 ./myScript &

#you can lower the priority using renice
#renice -n 25 -p 1234

#only root user can give it a higher priority