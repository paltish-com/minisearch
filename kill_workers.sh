#!/bin/bash
pids=`ps aux | grep 'python3 ./crawler-worker.py' | grep -v grep  | awk '{print $2}'`
for pid in $pids;
do 
    echo killing $pid;
    kill $pid
done
