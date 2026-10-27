+++
title = "Thunderbird \"Could not initialize the browser's security component\""
date = 2010-04-11T12:53:40Z

[taxonomies]
tags = ["Linux", "thunderbird", "ubuntu"]
+++

UPDATE: The issue has been fixed in a subsequent Ubuntu system update, so there should be no reason to go through the steps below if your system is up-to-date.

After a recent system update in Ubuntu 9.10 (Karmic) I started getting an error message in Thunderbird starting with "Could not initialize the browser's security component". Among other things, this means that [Hotmail integration with Thunderbird](@/blog/2009-06-10-goodbye-webmail-hello-pop.md) no longer works.

![Thunderbird error message](/uploads/2010/04/thunderbird-nss.png)

The error dialog itself has a few suggestions, however none of these fixes the issue.

Luckily the solution can be found on Ubuntu forums and is very straightforward. All that is required is to remove the package "libnss3-0d". This can be achieved from Synaptic (System > Administration > Synaptic Package Manager) or from the command line:

`sudo apt-get remove libnss3-0d`

Here is the link to the [original post](http://ubuntuforums.org/showthread.php?t=1451551) on Ubuntu forums and the [corresponding bug](https://bugs.launchpad.net/ubuntu/+source/firefox/+bug/559881) on Launchpad.
