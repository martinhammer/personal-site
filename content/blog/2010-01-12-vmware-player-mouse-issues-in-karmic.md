+++
title = "VMware Player mouse issues in Karmic"
date = 2010-01-12T13:43:12Z

[taxonomies]
tags = ["karmic-upgrade", "Linux", "ubuntu", "vmware"]
+++

VMware Player experiences mouse capture problems when run under Ubuntu 9.10 Karmic host. Inside the guest window, the mouse pointer works fine in a top-left rectangle of the window (640x480 pixels?) but outside of this area the mouse pointer switches its focus to the host. Add the following line to the file `/etc/vmware/bootstrap` to fix it:

`export VMWARE_USE_SHIPPED_GTK=yes`

**Important note:** VMware code needs to be recompiled each time the Linux kernel is updated and this entry may prevent it from compiling successfully. The additional line should be removed or commented out prior to building VMware Player and then put back in back again.

For a discussion see [this thread](http://ubuntuforums.org/showthread.php?p=8177063) on Ubuntu forums.
