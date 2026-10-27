+++
title = "Tracker: corrupted index, high CPU"
date = 2009-05-17T14:04:30Z

[taxonomies]
tags = ["gnome", "jaunty-upgrade", "Linux", "ubuntu"]
+++

My only issue after an otherwise smooth upgrade to Ubuntu 9.04 (Jaunty) has been with [Tracker](http://projects.gnome.org/tracker/). After logging in I noticed high disk and CPU usage, and eventually an error came up regarding corrupted index. I have tried several times to re-index, this did not work; also pausing all indexing in the tracker applet has no effect on the CPU usage by the trackerd process.

The error and solution are [discussed in more detail](http://ubuntuforums.org/showthread.php?t=1138029) on Ubuntu Forums. The following suggestion fixed the problem for me:

```bash
sudo apt-get install tracker-utils
tracker-processes -r
```

And then letting tracker rebuild the index at the start of next session. Note that the above command will remove all existing tracker files (this should not be a problem since they're causing the issue in the first place) and that depending on how much data needs to be indexed it can take a while to recreate the index.
