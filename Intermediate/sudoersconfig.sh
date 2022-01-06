#!/bin/bash
# EMirhan DOğandemir 06/01/2022 sudoers dosyasının düzenlenmesi 

file="/etc/group"

if [[ -n "grep "sudo" $file"  ]]
then 
   echo "sudo grubunda olan kullanıcılar bulunmaktadır"
else
   echo "sudo grubunda olan kullanıcı bulunmamaktadır"
fi
