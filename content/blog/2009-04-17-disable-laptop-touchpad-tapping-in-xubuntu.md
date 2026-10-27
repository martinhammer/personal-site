+++
title = "Disable laptop touchpad tapping in Xubuntu"
date = 2009-04-17T12:03:53Z

[taxonomies]
tags = ["laptop", "Linux", "x.org", "xubuntu"]
+++

UPDATE: These steps work fine for Xubuntu 8.04 (Hardy). For more recent Xubuntu versions you should take a look at [this later post](@/blog/2009-04-27-disable-laptop-touchpad-tapping-in-xubuntu-904.md) which has the correct steps.

One of the things I find very annoying is the default "tap to click" behaviour of laptop touchpads. Here are easy steps how to configure Xubuntu to stop the touchpad tapping. It will also let you configure other touchpad settings. It comes courtesy of the [Xfce goodies project](http://goodies.xfce.org/).

1. Install the gsynpatics plugin for Xubuntu Settings Manager

   ```bash
   sudo apt-get install gsynaptics-mcs-plugin
   ```
2. **IMPORTANT** Make a backup of your xorg.conf file. Note: messing up this file is not a good idea, so make a backup and be careful with it.

   ```bash
   cd /etc/X11
   sudo cp xorg.conf xorg.conf.backup
   ```
3. Open xorg.conf (in vi or mousepad or whatever)

   ```bash
   sudo mousepad xorg.conf
   ```
4. Look for a block starting with `Section "InputDevice"`, with `Identifier    "Synaptics Touchpad"` on second line and ending with `EndSection`.
5. In the above block (e.g. just above the EndSection line) add the following line:

   ```
   Option		"SHMConfig"		"on"
   ```
6. Save the file xorg.conf
7. Restart X (Ctrl+Alt+Backspace)
8. In the Applications menu, go to Settings > Settings Manager. This opens the in the Xfce Settings Manager where you should see a new entry called "Synaptics settings".
9. Open this and to disable tapping simply uncheck "Enable tapping" on the middle tab.

Good luck and happy Xubuntuing on your laptops.
