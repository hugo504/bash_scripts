#!/bin/bash
online="online_host.txt"

for i in XX.XXX.XX.{196..255} # Replace by base ip address
do
ping -c 1 $i
if [ $? -eq 0 ]; then
echo $i >> $online
fi
done

