#!/bin/bash

# oppo merger

PARTITIONS="my_carrier my_company my_engineering my_heytap my_manifest my_preload my_product my_region my_stock"
merge() {
    mkdir $partition
    mount -o ro $partition.img $partition 
    cd system
    cp -fpr ../$partition/ .
    cd ..
    umount $partition
    rm -rf $partition/
}

for partition in $PARTITIONS; do
    merge
done
