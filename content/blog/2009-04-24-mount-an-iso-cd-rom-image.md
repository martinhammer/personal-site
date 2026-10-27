+++
title = "Mount an ISO CD-ROM image"
date = 2009-04-24T04:14:02Z

[taxonomies]
tags = ["commandline", "Linux"]
+++

Most CD-ROM downloads come as ISO images which can be burned onto a CD. They can also be mounted as drives without actually burning them onto a disk by using the mount loopback command. The command below mounts the image foobar.iso in user's home directory as /media/cdrom:

```bash
sudo mount -o loop ~/foobar.iso /media/cdrom
```

This assumes that a /media/cdrom directory exists on you system (it does on Ubuntu). However, it's easy enough to use a different directory, e.g.

```bash
cd ~
mkdir foobar
sudo mount -o loop foobar.iso foobar
```

The command to unmount is also straightforward

```bash
sudo unmount /media/cdrom
```
