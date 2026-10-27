+++
title = "Mount NTFS disk from commandline"
date = 2009-06-07T15:56:09Z

[taxonomies]
tags = ["commandline", "Linux", "usb"]
+++

Nautilus and Thunar sometimes refuse to mount NTFS disk (e.g. a USB hard drive) when it was previously not unmounted cleanly from Windows. It is still possible to mount it from terminal shell by using the following command:

`sudo mount -t ntfs-3g -o force /dev/sdc1 /media/myntfsdisk`

Where `/dev/sdc1` is the device you want to mount and `/media/myntfsdisk` is the mount point.
