#!/bin/bash
clear
echo What is the capital of Saudi Arabia \?
read answer
while test $answer != Riyadh
do
echo NO , wrong please try again
read answer
done
echo This is correct
