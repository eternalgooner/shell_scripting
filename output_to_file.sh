#! /bin/bash

#use great than symbol '>' to output to a file
#output the date to a new file
#if data already exists in the file it will be overwritten
date > newDateFile

#use >> to append to an existing file (no data overwritten)
echo "append to date file" >> newDateFile

