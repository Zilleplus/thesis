#!/bin/bash

echo 'parsing the config file'
cgconfigparser -l ./squareIso.conf

echo 'putting stress in cgroup'
/usr/bin/cgexec -g cpuset:signal_group /root/thesis/timerLinux/a.out 
