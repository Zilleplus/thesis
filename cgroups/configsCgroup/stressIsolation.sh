#!/bin/bash

echo 'parsing the config file'
cgconfigparser -l ./stressIsolation.conf

echo 'putting stress in cgroup'
/usr/bin/cgexec -g cpuset:stress_group stress -c 16

