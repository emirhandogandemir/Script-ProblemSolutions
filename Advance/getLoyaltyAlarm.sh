#!/bin/bash

ip=$(hostname -i)
sum=0
count=0
total=0
log_num=(1)

for num in "${log_num[@]}"
do
grep -i "MCCMServices|V1|getloyaltystatus" '/home/emirhan/Desktop/çark' | awk -v d1="$(date --date="-200 min" "+%Y-%m-%d %H:%M:%S")" -v d2="$(date "+%Y-%m-%d %H:%M:%S")" '$0 > d1 && $0 <d2' >~/Desktop/loglarçark
while read line; do
response=`echo $line | grep -o "MCCMServices|V1|getloyaltystatus.*" |awk -F\| '{print $6}'|awk -F\: '{print $2}'`
sum=`echo $response + $sum | bc`
count=$(( count + 1 ))
done < ~/Desktop/loglarçark
echo "sum is $sum"
echo "count is $count"
avg=`echo $sum /$count | bc`
echo "avg is $avg"
total=$(($avg + $total))
count=0
done  
echo $total
total_avg=$(($total / ${#log_num[@]}))
echo $total_avg
if [ $total -ge 3000 ];
then
        echo "Average getloyalty response time is $total ms for 200 minutes." | mail -s "GetNBA ResponseTime Check/10.86.69.152" -r "emirhandgndmr51@gmail.com"
fi
