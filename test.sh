#!/bin/sh

sudo true

sudo modprobe -r mtdram

sudo modprobe mtdram total_size=8192 erase_size=2048

sudo modprobe -r mtdram
