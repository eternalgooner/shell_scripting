#! /bin/bash

#every command that runs in the shell uses an exit code
#code from 0 - 255
#can capture values & use within scripts
#use $? to access the last exit code

#by default exit status is the last status in the script

#outputs exit code 0 - success
date
echo $?

#outputs 127 (failures are positive numbers)
trythis
echo $?

# 0 successful command
# 1 general unknown error
# 2 misuse of shell command
# 126 command can#t execute (permission)
# 127 command not found
# 128 invalid exit argument
# 128+x fatal error with Linux signal x
# 130 command terminated with Ctrl + C
# 255 exit status out of range

#provide own exit status using exit & n
exit 77