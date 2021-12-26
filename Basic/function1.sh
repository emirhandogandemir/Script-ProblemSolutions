#!/bin/bash
#Emirhan Dogandemir 26/12/2021
lspath(){
OLDIFS="$IFS"
IFS=:
for DIR in $PATH ; do echo 
$DIR ; done
IFS ="$OLDIFS"
}

