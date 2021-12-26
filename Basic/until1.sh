#!/bin/bash
clear
echo "Please Enter the user login name : \n"
read login_name
until who | grep $login_name
do
sleep 5
echo "wrong name! Please try again : \n"
read login_name
done
echo The user $login_name has logged in
