#!/bin/bash
# Emirhan Dogandemir
s=0
tarih=`date`
ay=${tarih:4:3}
gun=${tarih:8:2}
ls -al > temp_file_bugun
while read a1 a2 a3 a4 a5 a6 a7 a8 a9
do
 if [[ $a6 == $ay && $a7 == $gun && $a9 != "temp_file_bugun" ]]
then
   echo $a9
 fi;
 done < temp_file_bugun

