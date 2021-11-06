#!/bin/bash
# Case examples
#Emirhan Dogandemir  6/11/2021
read choice
case $choice in
1) date;;
2) ls -l;;
3) who;;
4) pwd;;
*) echo wrong choice;;
esac
