#!/bin/bash

file=~/Desktop/vodafone/batchcolumn.txt

control=`wc -l $file`

kritikdeger=990

#echo "deger $control"

#deger=`awk '{print $10}' $file`

echo "deger : $deger"
deger2=`grep "[0-9]{3}" $file`
echo "deger2 : $deger2"
deger3=`(grep '\<[0-9]\{3\}\>' $file | xargs)` 
echo "deger3 : $deger3"


for deger in ${deger3[@]}; do
  
if [ $deger -ge  $kritikdeger ]
then 
echo "kritik degere ulaşılan kolonlar vardır $deger"
fi
done
