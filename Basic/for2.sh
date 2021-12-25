#!/bin/bash
declare -a student
student=(emirhan öznur ayşe belinay nida asiye)
for i in "${student[*]}"
do
echo $i
if  [[ i=="emirhan" ]]
then 
echo "sınıfta emirhan adlı öğrenci vardir"
else 
echo "emirhan adlı öğrenci sınıfta yoktur"
fi
done
