#!/bin/bash
disk=`df -h | grep /Products | awk {print'$5'}`
split="%"
diskdeger=${disk//$split}
if [ $diskdeger -gt 80 ]
then
cd /Products/kafka/kafka1/kafka_2.11-1.0.0/logs && ls -ltrh | awk '{print $9}' | grep -i 'controller.log' | xargs rm -f
cd /Products/kafka/kafka1/kafka_2.11-1.0.0/logs && ls -ltrh | awk '{print $9}' | grep -i 'server.log' | xargs rm -f
cd /Products/kafka/kafka1/kafka_2.11-1.0.0/logs && ls -ltrh | awk '{print $9}' | grep -i 'state-change.log'| xargs rm -f
fi
