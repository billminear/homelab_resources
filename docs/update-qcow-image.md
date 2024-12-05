# Summary
This guide lists some commands to mount and modify a QCOW2 image.
I needed this to remove the update_etc_hosts module from the 
cloud-init config.

0. Backup your image.
```sh
cp /path/to/img.qcow2 /path/to/img.qcow2.bkup
```

1. Install tools if necessary.
```sh
sudo apt update
sudo apt install qemu-utils
```

2. Locate the image.
3. Load the NBD kernel module.
```sh
modprobe nbd
```
4. Mount the QCOW2 image.
```sh
qemu-nbd --connect=/dev/nbd0 /path/to/img.qcow2
```
5. Create device file mappings for the image's partitions.
```sh
kpartx -av /dev/nbd0
```
6. Mount the partition containing the files you wish to modify.
In my case, this was the root partition for `/etc/cloud/cloud.cfg.`.
> **NOTE:** In the guide I followed, it advised mounting /dev/mapper/nbd0p1.
However, when attempting that, I received the following error `mount: /mnt: wrong fs type, 
bad option, bad superblock on /dev/mapper/nbd0p1, missing codepage or helper program, 
or other error.` Turns out my root partition was mapped to nbd0p4, so I mounted it instead.
Be mindful.
```sh
mount /dev/mapper/nbd0p4 /mnt
```
7. Edit the file you're after. In my case the `cloud.cfg` file to remove the `update_etc_hosts` module.
```sh
vi /mnt/etc/cloud/cloud.cfg
```
8. Save, exit the file, and umount the image.
```sh
umount /mnt
```
9. Remove the partition mappings.
```sh
kpartx -d /dev/nbd0
```
10. Disconnect the QCOW2 image.
```sh
qemu-nbd --disconnect /dev/nbd0
```
11. Remove the NBD kernel module.
```sh
rmmod nbd
```
# Conclusion
You're image should now be updated! Launch a new template and see!