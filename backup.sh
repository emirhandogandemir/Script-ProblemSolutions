#!/bin/bash
#Bir yedekleme ornegi
#Emirhan 6/11/2021
clear
date=`date +F%`
mkdir /tmp/$1&&touch /tmp/$1/dosya.txt /tmp/$1/dosya2.txt
echo /tmp Klasorune $1 Klasoru ve icerigi olusturuldu.
sleep 5
mkdir -p /tmp/backup/$1_$date
echo /tmp Klasorune /backup klasoru ve $1_$date klasoru olusturuldu
sleep 5
cp -R /tmp/$1 /tmp/backups/$1_$date
echo /tmp klasorunde bulunan $1 klasor icerigi /tmp/backup/$1_$date klasorune yedeklendi
sleep 5 
echo yedekleme tamamland
echo isterseniz /tmp/$1 klasorunu ve
echo /tmp klasoru sisteminizi kapattiginda kendisi zaten silinir
sleep 1
echo ESAS KLASOR ICERIGI
ls -l /tmp/$1
sleep 1
echo yedeklenen dosya icerigi
ls -l /tmp/backups/$1_$date/$1/
echo Script sona erdi
