#!/bin/bash

echo "creating cgroups"

#cgroup path
cPath='/sys/fs'

#root group, group above all other groups
rootGroup='cgroup'

#groups according to type
groupCpu='cpuset'
groupMemory='memory'
groupIO='blkio'

#subgroups in the types
cpuGroup1='test'

rootGroupPath=$cPath'/'$rootGroup
mount -t tmpfs cgroup_root $rootGroupPath
echo  'mounting root group on '$rootGroupPath


#make cgroup with cpusets
cpusetPath=$rootGroupPath'/'$groupCpu
echo 'creating dir: '$cpusetPath
mkdir $cpusetPath
echo 'mouting cpuset on:'$cpusetPath
mount -t cgroup -o cpuset cpu_mem $cpusetPath

#add the group
pathCpuGroup1=$cpusetPath'/'$cpuGroup1
echo 'add a group '$cpuGroup1'to the cpuset'
echo 'create dir:'$pathCpuGroup1
mkdir $pathCpuGroup1


#set the cpu
echo 'writing a 1 to: '$pathCpuGroup1'/cpuset.cpus' 
echo 1 > $pathCpuGroup1'/cpuset.cpus'


#set the memory
#echo 1 > $pathCpuGroup1'/cpuset.mems'

#set a task
#echo insertPIDHERE > $pathCpuGroup1'/tasks'

