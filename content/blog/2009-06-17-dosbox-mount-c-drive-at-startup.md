+++
title = "DOSBox mount C drive at startup"
date = 2009-06-17T14:53:19Z

[taxonomies]
tags = ["games", "Linux"]
+++

Here's a tip to save typing the mount command each time you start [DOSBox](http://www.dosbox.com/). Simply create a file called .dosboxrc in your home directory and save it with the following content:

```ini
[autoexec]
MOUNT C ~/OldApps
c:
```

Where `~/OldApps` is the directory with MS-DOS executables. [Here's a how-to](http://www.dosgames.com/forum/post-93360.html) with more information about DOSBox under Linux.
