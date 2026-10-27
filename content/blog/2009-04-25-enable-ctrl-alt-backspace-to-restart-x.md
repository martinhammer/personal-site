+++
title = "Enable Ctrl-Alt-Backspace to restart X"
date = 2009-04-25T06:15:28Z

[taxonomies]
tags = ["jaunty-upgrade", "Linux", "ubuntu", "x.org"]
+++

UPDATE: These steps work fine for Ubuntu 9.04 (Jaunty). For more recent Ubuntu versions you should take a look at [this later post](@/blog/2009-11-07-ctrl-alt-backspace-to-restart-x-in-karmic.md) which has the correct steps.

The Ctrl-Alt-Backspace key combination which restarts X is by default disabled in X version 1.6 (and hence in Ubuntu 9.04). Follow the steps below to re-enable it.

1. **IMPORTANT** Make a backup of your xorg.conf file. Note: messing up this file is not a good idea, so make a backup and be careful with it.

   ```bash
   cd /etc/X11
   sudo cp xorg.conf xorg.conf.backup
   ```
2. Open xorg.conf for editing (substitute `gedit` for `mousepad` if you are on Ubuntu)

   ```bash
   sudo mousepad /etc/X11/xorg.conf
   ```
3. Add the following section at the bottom of the file:

   ```
   Section "ServerFlags"
   Option    "DontZap"    "no"
   EndSection
   ```
4. Save the file, log out and back in. You can try the Ctrl-Alt-Backspase combination at the login window to make sure it works as expected.
