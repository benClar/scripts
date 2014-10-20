#!/bin/bash

#variables

HEADERNAME=$1;


#setting up directory structure
	/opt/scripts/MAKE_DIRECTORY.sh .compiled/;
	/opt/scripts/MAKE_DIRECTORY.sh .headers;	
	/opt/scripts/MAKE_DIRECTORY.sh .text/

#setting up header files
	/opt/scripts/CHECK_AND_COPY_FILE.sh debug.h .headers/debug.h;
	/opt/scripts/CHECK_AND_COPY_FILE.sh defaultHeader.h	.headers/$HEADERNAME.h
	
