#!/bin/bash

#variables

HEADERNAME=$1;


#setting up directory structure
	/shared_scripts/cScripts/MAKE_DIRECTORY.sh .compiled/;
	/shared_scripts/cScripts/MAKE_DIRECTORY.sh .headers;	
	/shared_scripts/cScripts/MAKE_DIRECTORY.sh .text/

#setting up header files
	/shared_scripts/cScripts/CHECK_AND_COPY_FILE.sh debug.h .headers/debug.h;
	/shared_scripts/cScripts/CHECK_AND_COPY_FILE.sh defFunct.h .headers/defFunct.h
	/shared_scripts/cScripts/CHECK_AND_COPY_FILE.sh defaultHeader.h	.headers/$HEADERNAME.h
	
