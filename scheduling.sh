#! /bin/bash

#you can schedule a job using the 'at' command (only run once)
#the 'atd' daemon runs these jobs and checks the job queue
#most linux distros starts the atd at boot time
#atd usually checks /var/spool/at for jobs
#default checks every 60 seconds
#at -f myFile 10:23

#can specify a time to run daily 
    #10:15
    #3:40PM
    #midnight

#specify a date
    #MMDDYY
    #MM/DD/YY
    #DD.MM.YY
    #Jul 4

#scheduled jobs receive an email to the user who started, once finished
counter=1
while [ $counter -lt 10 ]
do 
    echo "$counter"
    counter=$[ $counter + 1 ]
done
echo "finished"

#check jobs in queue using atq

#remove a job atrm 13

#CRON
#cron jobs can be run at regular intervals
#cron jobs stored in cron tables

#10:15 every day
#15 10 * * * command

#15:15 every monday
#15 16 * * 1 command

#first day every month
#00 12 1 * * command

#command must reference full path to script

#each system user can have theirown cron table
#crontab command is used to manage table
#crontab -l

#you can use the predefined tables (hourly,daily,weekly,monthly)
#copy your script to daily dir /etc/cron.daily/

#if system is off cron jobs won't run
#use anacron to run missed jobs on startup