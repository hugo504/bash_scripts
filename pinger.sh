#!/bin/bash
online="online_host.txt"
for i in 10.93.163.{196..255}
do
ping -c 1 $i
if [ $? -eq 0 ]; then
echo $i >> $online
fi
done

