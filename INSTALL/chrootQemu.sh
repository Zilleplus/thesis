#!/bin/bash

sudo cp /usr/bin/qemu-arm-static /mnt/usr/bin
sudo modprobe binfmt_misc
sudo mount -t devpts devpts /mnt/dev/pts
sudo mount -t proc proc /mnt/proc
