+++
title = "Change virtual terminal font size"
date = 2009-09-21T05:28:14Z

[taxonomies]
tags = ["commandline", "Linux", "ubuntu"]
+++

This post is about how to change the resolution (i.e. font size) of virtual terminals or "tty" in Linux. Virtual terminal is the basic command line interface which you see when you press &lt;Ctrl>&lt;Alt>&lt;F1> (note: to get back to your existing Gnome or KDE session press &lt;Alt>&lt;F7>). This is different from the Terminal emulator, such as the Terminal application in Gnome.

To change the font size of the virtual terminal it is necessary to set the vga parameter in the entry used by the Grub bootloader to start up Linux. Follow the steps below to set the entry correctly.

1. First, intall the hwinfo utility through Synaptic or Terminal:

   ```bash
   sudo apt-get install hwinfo
   ```
2. Then run the following command in Terminal:

   ```bash
   sudo hwinfo --framebuffer
   ```
3. The command will output some information about your graphics system. Skip the top bit and you should see a list of entries like this:

   ```
   Mode 0x0300: 640x400 (+640), 8 bits
   Mode 0x0301: 640x480 (+640), 8 bits
   Mode 0x0303: 800x600 (+800), 8 bits
   Mode 0x0305: 1024x768 (+1024), 8 bits
   Mode 0x0307: 1280x1024 (+1280), 8 bits
   Mode 0x0317: 1024x768 (+2048), 16 bits
   Mode 0x0318: 1024x768 (+4096), 24 bits
   ```
4. Review the list which might be quite long, select the resolution you want to use and copy the hexadecimal number after Mode. For example, for 24 bit 1024x786 resolution the number is 0x0318.
5. Still in the Terminal emulator, run the following command to edit the Grub bootloader configuration file:

   ```bash
   gksudo gedit /boot/grub/menu.lst
   ```
6. Find the entry you want to edit (or copy an existing entry and give it a different name) and change the line which begins with "kernel". As a precaution, make sure you have at least one entry left in the file without the new resolution so you can still safely boot and edit the file again if necessary.
    
   Original entry:

   ```
   kernel		/boot/vmlinuz-2.6.28-15-server root=/dev/sda3 ro quiet splash
   ```

   New entry:

   ```
   kernel		/boot/vmlinuz-2.6.28-15-server root=/dev/sda3 ro quiet vga=0x0318 splash
   ```
7. Reboot your computer and at the Grub menu select the entry which was edited. You may notice some difference during the boot process, to verify that the resolution and font size are suitable press &lt;Ctrl>&lt;Alt>&lt;F8> once you are at the login screen. This will take you to tty8 which should display messages from the boot process.
