#!/bin/bash
taskset -c 0 ./stress -m 16 --vm-bytes 64M -c $1
