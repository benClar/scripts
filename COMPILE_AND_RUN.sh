#!/bin/bash

FILENAME=$1;
COMPILEDFILE=`echo $FILENAME | awk -F. '{ print $1 }'`;
ARGV1=$2;
main() {
	
	gcc -Wall -pedantic -O3 -lm -std=c99 $FILENAME -o .compiled/$COMPILEDFILE; 
	if [ -z "$ARGV1" ]; then
		.compiled/./$COMPILEDFILE;
	else
		.compiled/./$COMPILEDFILE $ARGV1;
	fi
}

main
