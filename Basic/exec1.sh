#!/bin/bash
exec 5>zor
ps aux 1>&5
date 1>>zor # date >> zor
exec 6<file
exec 7< zor
cat 0<&6 #cat <&6
cat 0<&7 #cat <&7
if [ -f zor ]
then
i=0
while read LINE
do
i=`echo "$i" +1" | bc `
done < zor 
echo $i
fi
