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