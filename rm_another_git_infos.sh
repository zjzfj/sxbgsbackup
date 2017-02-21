#!/bin/sh
while read line
do
     echo `ls $line/.git |wc`
     rm -rf $line/.git/
done < /mnt/data/bakeup/files/dirs    #filename 为需要读取的文件名
