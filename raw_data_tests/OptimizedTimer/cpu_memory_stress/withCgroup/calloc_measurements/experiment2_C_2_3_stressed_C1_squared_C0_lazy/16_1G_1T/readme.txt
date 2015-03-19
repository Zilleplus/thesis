root@radxa:~/thesis/cgroups/configsCgroup# cat stressIsolation.conf
group stress_group {
     cpuset {
         cpuset.cpus=2,3;
         cpuset.mems=0;
     }
}
root@radxa:~/thesis/cgroups/configsCgroup# cat stressIsolation.sh
#!/bin/bash

echo 'parsing the config file'
cgconfigparser -l ./stressIsolation.conf

echo 'putting stress in cgroup'
# /usr/bin/cgexec -g cpuset:stress_group stress -c $1 -m 1 --vm-bytes 1G
/usr/bin/cgexec -g cpuset:stress_group /root/thesis/stress-1.0.4/src/stress -c $1 -m 16 --vm-bytes 64M
