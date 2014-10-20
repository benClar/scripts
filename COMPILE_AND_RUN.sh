#!/bin/bash

FILENAME=$1;
COMPILEDFILE=`echo $FILENAME | awk -F. '{ print $1 }'`;

main() {
	
	gcc -Wall -pedantic -O3 -lm -std=c99 $FILENAME -o .compiled/$COMPILEDFILE && .compiled/./$COMPILEDFILE;
}

main
