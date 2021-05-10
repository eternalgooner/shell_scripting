#! /bin/bash

#linux treats all objects as files
#special reserved file descriptors are
#0 STDIN
#1 STDOUT
#3 STERR

#you can redirect STDIN data using <
#display file on screen
cat < testFile.txt

#redirect STDOUT data using >
echo "this data will go to file " > newFile

#append to existing file >>
echo "this will append to existing file" >> newFile

#for errors you need to redirect STDERR
#declare which file descriptor to redirect to just before the > .e.g. 2>
echo "this will go to newFile" >> newFile
ls -al badFile 2> errorLog

#reference both STDOUT & STDERR to move messages to appropriate files (success & error)
ls -al badFile testFile.txt 2> errorLog2 1> successLog

#put all success & error messages in same file, use &>
#error messages get higher priority & sorted to the top
ls -al testFile.txt badFile &> allLogs

#temporarily redirect output to STDERR using >&2
#this will redirect to STDERR regardless if it's an error or not
echo "this is an error" >&2
echo "this is normal output"

#then when running the script you can redirect errors to error log
./fileWithErrors.sh 2> errorLog

#permanent redirection
#use a redirect for the whole file instead of each line using 'exec'
#redirect for STDOUT & STDERR
exec 1> testOut
exec 2> errorOut

echo "going to testOut1"
echo "going to testOut2"
ls -l badFile
echo "going to testOut3"

#can change file output at any point in the script

#you can create your own file descriptors (a shell can use up to 9 at once)
#0 - 2 are reserved, 3 - 8 are available

#suppress output by redirecting to > /dev/null
#use to quickly delete contents from a file without deleting the file
echo "output to file which will be cleared of data" > emptyFile
echo emptyFile
cat /dev/null > emptyFile

#can create temp files in /tmp folder using mktmp
#can create temp dirs in /tmp folder using mktmp-d

#use the tee command to display out to monitor & files (overwrites file)
date | tee dateFile

#use tee -a to append