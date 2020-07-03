#!/bin/sh -e

rm -rf files
mkdir  files
touch  files/test.txt
touch  files/test2.txt

mkfs.ubifs -r files -m 2048 -e 129024 -c 100 -o test.img
ubinize    -o test2.img -p 16KiB -m 512 -s 256 ubinize.cfg

