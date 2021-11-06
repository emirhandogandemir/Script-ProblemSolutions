#!/bin/bash
#test command examples
# Emirhan Dogandemir 6/11/2021
if who | grep -s recep > /dev/null
then
echo  recep is logged to system
else
echo john not available to system
fi
