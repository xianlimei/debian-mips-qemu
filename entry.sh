#!/bin/bash

echo "about to launch QEMU mips64el R2 generic version"

./qemu-system-mips64el -M malta -cpu MIPS64R2-generic -m 2G -append 'root=/dev/vda console=ttyS0 mem=2048m net.ifnames=0 nokaslr' -netdev user,id=user.0 -device virtio-net,netdev=user.0 -serial stdio -usbdevice keyboard -usbdevice tablet -kernel vmlinux-* -initrd initrd.img-* -drive file=$(echo debian-*.qcow2),if=virtio
