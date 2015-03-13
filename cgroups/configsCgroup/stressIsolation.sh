#!/bin/bash

echo 'parsing the config file'
cgconfigparser -l ./stressIsolation.conf

echo 'putting stress in cgroup'
/usr/bin/cgexec -g cpuset:stress_group stress -c $1 -m 1 --vm-bytes 1G

