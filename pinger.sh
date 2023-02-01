#!/bin/bash
online="online_host.txt"
offline="offline_host.txt"
for i in XX.XX.XXX.{196..255} # Replace XX.XX.XXX by network address
do
ping -c 1 $i
if [ $? -eq 0 ]; then
echo $i >> $online
else
echo $i >> $offline
fi
done
