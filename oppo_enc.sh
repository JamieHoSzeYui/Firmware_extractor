#!/bin/bash

# Use for OnePlus 9R ONLY


PARTITIONS="my_carrier my_company my_engineering my_heytap my_manifest my_preload my_product my_region my_stock"
keycode="10010111"

unc() {
        echo "[INFO]: Removing 10010111 for $partition"
        mv $partition.$keycode.new.dat.br $partition.new.dat.br >> /dev/null
        mv $partition.$keycode.patch.dat $partition.patch.dat >> /dev/null
        mv $partition.$keycode.transfer.list $partition.transfer.list >> /dev/null
    fi
}

for partition in $PARTITIONS; do
    unc
done
