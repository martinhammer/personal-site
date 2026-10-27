+++
title = "Open the 'Safely Remove Hardware' dialog manually"
date = 2009-10-05T14:13:53Z

[taxonomies]
tags = ["usb", "Windows"]
+++

Sometimes the Windows system tray icon used to safely remove USB hardware disappears. It is not a good idea to simply unplug the USB device, especially a memory stick or hard drive, since this can lead to data loss or corruption. Also, the disk will not be unmounted cleanly and you may face issues when trying to mount it later in Linux.

To open the dialog manually and remove the device cleanly, run the following command from the Windows Run dialog (Start > Run):

`RUNDLL32.EXE SHELL32.DLL,Control_RunDLL HotPlug.dll`
