#!/bin/bash

#copies file to current directory if it does not already exist or has had any changes made to it
#Parameter 1: template file
#Parameter 2: target file

if [ -f "$2" ]; then
        diff /opt/templates/$1 $2;
        if [ $? -ne 0 ]; then
                /bin/cp -f /opt/templates/$1 $2;
        fi;
else    
        cp /opt/templates/$1 $2;
fi

