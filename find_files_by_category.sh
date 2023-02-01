#!/bin/bash

exec_list="liste_exectuables.txt"
dir_list="liste_dossiers.txt"
file_list="liste_fichiers_non_exec.txt"
count_exec=0
count_dir=0
count_file=0
for i in `ls`
do
# if directory
if [ -d $i ];then 
let "count_dir+=1"
echo $i >> $dir_list
elif [ -x $i ];then 
echo $i >> $exec_list
let "count_exec+=1"
elif [ -f $i ];then
let "count_file+=1"
echo $i >> $file_list
fi
done
echo "$count_exec executables found"
echo "$count_dir directories found"
echo "$count_file non exec found"

# elif file
# elif 
