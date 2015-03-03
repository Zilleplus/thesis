#

directory structure:

|-- INSTALL
|   |-- chrootQemu.sh
|   |-- installCgroups.sh
|   |-- installLxc.sh
|   `-- tools.sh
|-- README.md
|-- cgroups
|   |-- cgroupUpdate
|   |-- configsCgroup
|   |   |-- stressIsolation.conf
|   |   `-- stressIsolation.sh
|   |-- createCgroups.sh
|   `-- remove
|-- charts
|   |-- C1_3_stressed
|   |   |-- delta_pdf.jpg
|   |   |-- delta_samples.jpg
|   |   `-- delta_threadss.jpg
|   |-- C1_squared
|   |   |-- delta_pdf.jpg
|   |   |-- delta_threads.jpg
|   |   `-- samples.jpg
|   |-- C2_3_stressed
|   |   |-- delta_pdf.jpg
|   |   |-- delta_sample.jpg
|   |   `-- delta_threads.jpg
|   |-- noLoad
|   |   |-- noLoad_delta_pdf.jpg
|   |   `-- noLoad_samples.jpg
|   |-- studie_extrema
|   |   |-- max.jpg
|   |   |-- max_3lowest.jpg
|   |   |-- mean.jpg
|   |   `-- numberOfValues.jpg
|   `-- withLoad
|       |-- load16T_pdf.jpg
|       |-- load16T_samples.jpg
|       `-- loadTreadsPdfs.jpg
|-- dir
|-- matlab
|   |-- clean_matlab_files
|   |   |-- cgroups
|   |   |   |-- cpustress
|   |   |   |   |-- C1_3_stressed
|   |   |   |   |   |-- delta_theorie_Load.m
|   |   |   |   |   `-- delta_threads_load.m
|   |   |   |   |-- C1_squared
|   |   |   |   |   |-- delta_theorie_Load.m
|   |   |   |   |   `-- delta_threads_load.m
|   |   |   |   `-- C_2_3_stressed
|   |   |   |       |-- delta_theorie_Load.m
|   |   |   |       `-- delta_threads_load.m
|   |   |   `-- memstress
|   |   |       |-- C0_C2_C3_eating
|   |   |       |   |-- T1
|   |   |       |   |   |-- delta_theorie_Load_mem.m
|   |   |       |   |   |-- delta_threads_load_mem.asv
|   |   |       |   |   `-- delta_threads_load_mem.m
|   |   |       |   `-- T16
|   |   |       |       |-- delta_theorie_Load_mem.m
|   |   |       |       `-- delta_threads_load_mem.m
|   |   |       `-- C2_C3_eating
|   |   |           |-- T1
|   |   |           |   |-- delta_theorie_Load_mem.m
|   |   |           |   |-- delta_threads_load_mem.asv
|   |   |           |   `-- delta_threads_load_mem.m
|   |   |           `-- T16
|   |   |               |-- delta_theorie_Load_mem.m
|   |   |               `-- delta_threads_load_mem.m
|   |   |-- extremas.asv
|   |   |-- extremas.m
|   |   `-- noCounterMeasures
|   |       |-- cpustress
|   |       |   |-- delta_theorie_Load.m
|   |       |   `-- delta_threads_load.m
|   |       |-- delta_theorie_noLoad.m
|   |       `-- memstress
|   |           |-- T1
|   |           |   |-- delta_theorie_Load_mem.m
|   |           |   |-- delta_threads_load_mem.asv
|   |           |   `-- delta_threads_load_mem.m
|   |           `-- T16
|   |               |-- delta_theorie_Load_mem.m
|   |               `-- delta_threads_load_mem.m
|   `-- old
|       |-- analyseTime_100us.m
|       |-- analyseTime_10ms.m
|       |-- analyseTime_noAdjustments.m
|       |-- analyseTime_noAdjustmentspart2.m
|       |-- analyseTime_stress_in_cpuset_cgroup.m
|       |-- delta_theorie.m
|       `-- matlab_WIllemMelis.zip
|-- raw_data_tests
|   |-- 100us
|   |   |-- withCgroups
|   |   |   |-- 2cores_stress
|   |   |   |   |-- test_16T
|   |   |   |   |-- test_1T
|   |   |   |   |-- test_2T
|   |   |   |   |-- test_32T
|   |   |   |   |-- test_3T
|   |   |   |   |-- test_4T
|   |   |   |   |-- test_64T
|   |   |   |   |-- test_6T
|   |   |   |   `-- test_8T
|   |   |   |-- 3cores_stress
|   |   |   |   |-- test_16T
|   |   |   |   |-- test_1T
|   |   |   |   |-- test_2T
|   |   |   |   |-- test_32T
|   |   |   |   |-- test_3T
|   |   |   |   |-- test_4T
|   |   |   |   |-- test_5T
|   |   |   |   |-- test_64T
|   |   |   |   |-- test_6T
|   |   |   |   |-- test_8T
|   |   |   |   `-- test_T16_3cores_faulty
|   |   |   `-- 3cores_stress_core1_3
|   |   |       |-- test_16T
|   |   |       |-- test_32T
|   |   |       `-- test_4T
|   |   `-- withoutSafetyNets
|   |       |-- withLoad
|   |       |   |-- test_16T
|   |       |   |-- test_1T
|   |       |   |-- test_2T
|   |       |   |-- test_32T
|   |       |   |-- test_3T
|   |       |   |-- test_4T
|   |       |   |-- test_5T
|   |       |   |-- test_64T
|   |       |   |-- test_6T
|   |       |   `-- test_8T
|   |       `-- withoutLoad
|   |           |-- test0
|   |           `-- test1
|   |-- 10ms
|   |   `-- withoutSafetyNets
|   |       |-- withLoad
|   |       |   `-- test_16T_2
|   |       `-- withoutLoad
|   |           `-- test0
|   `-- OptimizedTimer
|       |-- memory
|       |   `-- isolated_memory_test
|       |       |-- C0_C2_C3_eating
|       |       |   |-- 16T
|       |       |   |   |-- 128M
|       |       |   |   |-- 1G
|       |       |   |   |-- 256M
|       |       |   |   |-- 32M
|       |       |   |   |-- 512M
|       |       |   |   `-- 64M
|       |       |   `-- 1T
|       |       |       |-- 128M
|       |       |       |-- 1G
|       |       |       |-- 256M
|       |       |       |-- 32M
|       |       |       |-- 512M
|       |       |       `-- 64M
|       |       |-- C2_C3_eating
|       |       |   |-- 16T
|       |       |   |   |-- 128M
|       |       |   |   |-- 1G
|       |       |   |   |-- 256M
|       |       |   |   |-- 32M
|       |       |   |   |-- 512M
|       |       |   |   `-- 64M
|       |       |   `-- 1T
|       |       |       |-- 128M
|       |       |       |-- 1G
|       |       |       |-- 256M
|       |       |       |-- 32M
|       |       |       |-- 512M
|       |       |       `-- 64M
|       |       |-- all_eating_signal_freeOnOs
|       |       |   |-- T1
|       |       |   |   |-- 128M
|       |       |   |   |-- 1G
|       |       |   |   |-- 256M
|       |       |   |   |-- 32M
|       |       |   |   |-- 512M
|       |       |   |   `-- 64M
|       |       |   `-- T16
|       |       |       |-- 128M
|       |       |       |-- 1G
|       |       |       |-- 256M
|       |       |       |-- 32M
|       |       |       |-- 512M
|       |       |       `-- 64M
|       |       `-- old
|       |           |-- 2_workers
|       |           |   |-- delta.jpg
|       |           |   |-- readme.txt
|       |           |   `-- values.txt
|       |           `-- 4_workers
|       |               |-- delta.jpg
|       |               |-- readme.txt
|       |               `-- values.txt
|       |-- withLoad
|       |   |-- T1
|       |   |-- T16
|       |   |-- T2
|       |   |-- T32
|       |   |-- T4
|       |   |-- T64
|       |   `-- T8
|       |-- withcgroup
|       |   |-- C1_squared
|       |   |   |-- T01
|       |   |   |-- T02
|       |   |   |-- T04
|       |   |   |-- T08
|       |   |   |-- T16
|       |   |   |-- T32
|       |   |   |-- T64
|       |   |   `-- basic_no_load
|       |   |-- C_2_3_stressed_C1_squared_C0_lazy
|       |   |   |-- T01
|       |   |   |-- T02
|       |   |   |-- T04
|       |   |   |-- T08
|       |   |   |-- T16
|       |   |   |-- T32
|       |   |   `-- T64
|       |   `-- old
|       |       `-- C1_3_stressed
|       |           |-- T01
|       |           |-- T02
|       |           |-- T04
|       |           |-- T08
|       |           |-- T16
|       |           |-- T32
|       |           |-- T64
|       |           `-- UNVALIDDATAREADME.rtf
|       `-- withoutLoad
|           |-- test1
|           `-- test2
|-- timerLinux
|   |-- Makefile
|   |-- test.c
|   `-- timer.c
`-- variances.xlsx

66 directories, 177 files

