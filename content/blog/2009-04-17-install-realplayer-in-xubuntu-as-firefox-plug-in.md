+++
title = "Install RealPlayer as a Firefox plug-in in Xubuntu"
date = 2009-04-17T11:42:16Z

[taxonomies]
tags = ["bbciplayer", "firefox", "Linux", "multimedia", "realplayer"]
+++

I used the following steps to install RealPlayer in order to listen to [BBC Radio](http://www.bbc.co.uk/iplayer/radio). Although I did this on Xubuntu 8.04, it should also work for Ubuntu and other distros.

1. Download and install RealPlayer for Linux from [Real](http://www.real.com/linux). I downloaded the deb package and installed it through gdebi.
2. My install path was now `/opt/real/RealPlayer.` Check that the following two files exist:

   ```
   /opt/real/RealPlayer/mozilla/nphelix.so
   /opt/real/RealPlayer/mozilla/nphelix.xpt
   ```
3. Copy those two files to the Firefox plugins directory (the code below should be a single line):

   ```bash
   sudo cp /opt/real/RealPlayer/mozilla/nphelix.* /usr/lib/firefox-addons/plugins/
   ```
4. Restart Firefox. You can verify that Firefox has picked up the plugin under Tools > Add-ons > Plugins. It should say something along the lines of "Helix DNA Plugin: RealPlayer G2 Plug-In Compatible".

Good luck and happy listening.
