+++
title = "Commands for Gnome Power Manager and Network Manager"
date = 2009-04-20T12:48:12Z

[taxonomies]
tags = ["commandline", "gnome", "Linux"]
+++

Every now and then the Power Manager and/or Network Manager applets crash and disappear from the notification area on my old Xubuntu 8.04 laptop. There have been some bugs posted about this on [Launchpad](https://launchpad.net/), and it seems as if it should be fixed in more recent releases. Leaving that aside, here are the commands to run the two applets from command line.

Gnome Network Manager applet:

`nm-applet &`

Gnome Power Manager:

`gnome-power-manager`

or alternatively (this one will also open the preferences dialog):

`gnome-power-preferences`
