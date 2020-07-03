#!/bin/sh

sudo true

sudo modprobe -r mtdram

sudo modprobe mtdram total_size=8192 erase_size=2048
sudo modprobe ubi
sudo modprobe mtd

sudo ubiformat /dev/mtd0 -f test2.img
sudo ubiattach -p /dev/mtd0

sudo modprobe -r mtdram
