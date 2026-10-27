+++
title = "TrueCrypt tray icon in Unity"
date = 2011-08-16T02:16:35Z

[taxonomies]
tags = ["Linux", "natty-upgrade", "truecrypt", "ubuntu", "unity"]
+++

If you use [TrueCrypt](http://www.truecrypt.org/) under Ubuntu 11.04 Natty you would have noticed an annoying behaviour. Under previous versions an icon is present in the system tray which remains there whilst a volume is mounted even if the TrueCrypt window is closed. Under Unity the tray icon is not shown. If you accidentally close the window (instead of minimizing it), there's no easy way of getting back to it. Launching TrueCrypt again results in a error message.

The fix as suggested on [shocm.com](http://www.shocm.com/2011/06/getting-some-functionality-back-in-the-system-tray-on-ubuntu-11-04/) is to set the systray-whitelist property by running the following through command line (you will need to restart afterwards):

`gsettings set com.canonical.Unity.Panel systray-whitelist "['all']"`

However, your mileage may vary, and on my netbook this did not fix the issue. It seemed like the icon was placed in the tray, but it was rendered as a very thin strip about 1-2 pixels wide which could not be clicked.

The only way I found of getting out of missing window scenario was to resort to [using TrueCrypt through the command line](http://www.truecrypt.org/docs/?s=command-line-usage) to dismount all mounted volumes.

`truecrypt /d`

This will also exist TrueCrypt and afterwards it can be launched as usual.
