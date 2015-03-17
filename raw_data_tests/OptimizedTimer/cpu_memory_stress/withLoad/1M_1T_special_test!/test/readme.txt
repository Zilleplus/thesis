
root@radxa:~# ./stress.sh 1
stress: info: [1422] dispatching hogs: 1 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 2
stress: info: [1426] dispatching hogs: 2 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 3
stress: info: [1431] dispatching hogs: 3 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 4
stress: info: [1437] dispatching hogs: 4 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 3
stress: info: [1444] dispatching hogs: 3 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 4
stress: info: [1450] dispatching hogs: 4 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 5
stress: info: [1457] dispatching hogs: 5 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 6
stress: info: [1465] dispatching hogs: 6 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 7
stress: info: [1474] dispatching hogs: 7 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 8
stress: info: [1484] dispatching hogs: 8 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 9
stress: info: [1495] dispatching hogs: 9 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 10
stress: info: [1507] dispatching hogs: 10 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 11
stress: info: [1520] dispatching hogs: 11 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 12
stress: info: [1534] dispatching hogs: 12 cpu, 0 io, 1 vm, 0 hdd
^Croot@radxa:~# ./stress.sh 13
stress: info: [1549] dispatching hogs: 13 cpu, 0 io, 1 vm, 0 hdd

 
-------------------------------


root@radxa:~# cat stress.sh
stress -c $1 -m 1 --vm-bytes 1M
