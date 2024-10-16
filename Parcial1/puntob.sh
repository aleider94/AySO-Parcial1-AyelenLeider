#!/bin/bash

sudo fdisk /dev/sdc << EOF



n
p
1

+2.5G

n
p
2

+2.5G

n
p
3

+2.5G

n
e
4

+2.5G



w
EOF

echo "particionamiento parcial 1"
sudo fdisk -l /dev/sdc

echo "formateo de particiones"

sudo mkfs -t ext3 /dev/sdc1 
sudo mkfs -t ext3 /dev/sdc2 
sudo mkfs -t ext3 /dev/sdc3
sudo mkfs -t ext3 /dev/sdc5

sudo lsblk -f
echo "montamos particiones"

sudo mkdir -p /mnt/disco/{sdc1,sdc2,sdc3,sdc5}
sudo mount /dev/sdc1/mnt/disco/sdc1
sudo mount /dev/sdc2/mnt/disco/sdc2
sudo mount /dev/sdc3/mnt/disco/sdc3
sudo mount /dev/sdc5/mnt/disco/sdc5


