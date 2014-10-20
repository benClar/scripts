#!/bin/bash

#Creates a new blank c file from template

FILENAME=$1
HEADER=`echo $1 | awk -F. '{ print $1 }'`
DATE=`date "+%Y/%d/%m"`;
main(){

	if [ ! -e $FILENAME ]; then
		touch ./$FILENAME;
		echo "//" >> $FILENAME;
		echo "// $FILENAME" >> $FILENAME;
		echo "// Created by $USER on $DATE" >> $FILENAME;
		echo "// tags: " >> $FILENAME;
		echo "//" >> $FILENAME;
	
		cat /opt/.TEMPLATES/Ctemplate.c >> ./$FILENAME;
	else
		echo "file already exists";
	fi;	
	/shared_scripts/cScripts/ENV_SET_UP.sh $HEADER

	cat $FILENAME | sed "s/THISPROG/$HEADER.h/g" > $FILENAME &
}

main;
