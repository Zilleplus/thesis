#!/bin/bash

echo 'parsing the config file'
cgconfigparser -l ./stressIsolation.conf

echo 'putting stress in cgroup'
#/usr/bin/cgexec -g cpuset:stress_group stress -c $1 -m 16 --vm-bytes 64M
/usr/bin/cgexec -g cpuset:stress_group /root/thesis/stress-1.0.4/src/stress -c $1 -m 16 --vm-bytes 64M
