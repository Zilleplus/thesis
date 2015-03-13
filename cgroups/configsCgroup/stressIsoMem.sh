#!/bin/bash

echo 'parsing the config file'
cgconfigparser -l ./stressIsoMem.conf

echo 'putting stress in cgroup'
/usr/bin/cgexec -g cpuset:stress_group stress  -m $1 --vm-bytes $2 
