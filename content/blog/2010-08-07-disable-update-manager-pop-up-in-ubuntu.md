+++
title = "Disable Update Manager pop-up in Ubuntu"
date = 2010-08-07T05:56:20Z

[taxonomies]
tags = ["Linux", "ubuntu"]
+++

Here's how to disable the annoying Update Manager pop-up (technically a "pop-under") and instead have the update icon displayed in the notification area.

1. Hit Alt-F2 to open the "Run Application" dialog.
2. Type in `gconf-editor` to run the GNOME Configuration Editor.
3. Navigate to Apps > Update Notifier.
4. Untick the `auto_launch` checkbox.
