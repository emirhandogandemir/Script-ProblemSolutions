#!/bin/bash
for user in $(cat /etc/passwd | grep -v nologin | grep -v shutdown | grep -v sync | grep -v halt | cut -d : -f1)
do
passwd=$(chage -l $user | grep "Password expires" | cut -d ":" -f2)
account=$(chage -l $user | grep "Account expires" | cut -d ":" -f2)
host=$(hostname)

printf "$host;$user;$account;$passwd\n"
done 
