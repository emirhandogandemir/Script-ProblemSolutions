#!/bin/bash

IFS=$'\n'
declare -a workProcess
declare -a connectionProcess

for process_line in WP1 WP2 WP3 WP4 JWP JCP CP1 CP2 CP3 CP4 
do

echo process_line:$process_line

if [[ "$process_line" == *"WP"* ]]; then
workProcess[${#workProcess[@]}]="$process_line"
fi
if [[ "$process_line" == *"CP"* ]]; then
connectionProcess[${#connectionProcess[@]}]="$process_line"
fi



IFS='""'
sleep 1

done

for work_process in "${workProcess[@]}"
do
echo work_process : $work_process
done

for connection_Process in "${connectionProcess[@]}"
do
echo connection_Process : $connection_Process
done
