+++
title = "Problems with USB memory stick in Xubuntu 9.04"
date = 2009-05-02T06:59:49Z

[taxonomies]
tags = ["jaunty-upgrade", "Linux", "usb", "xubuntu"]
+++

After upgrading from Xubuntu 8.04 (Hardy) to 9.04 (Jaunty), the automount feature stopped working for a particular USB memory stick. It wasn't even listed when I ran commands like

`sudo fdisk -l`

and

`more /proc/partitions`

But interestingly, when I plugged in my camera via a USB cable, the memory card inside it was automounted, and even the troublesome USB stick was then recognized and mounted!

The [solution](http://ubuntuforums.org/showthread.php?t=311816) turned out to be manually updating the initramfs image of the new kernel 2.6.28-11 installed as part of the Jaunty upgrade. After running the command below and rebooting the machine, the USB stick is now recognized and automounted immediately after inserting it.

`` sudo update-initramfs -u -k `uname -r` ``

Note the [backward quotes](http://rute.2038bug.com/node10.html.gz#SECTION0010120000000000000000) in the above command.
