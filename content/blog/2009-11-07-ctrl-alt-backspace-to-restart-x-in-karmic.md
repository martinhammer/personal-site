+++
title = "Ctrl-Alt-Backspace to restart X in Karmic"
date = 2009-11-07T05:43:55Z

[taxonomies]
tags = ["karmic-upgrade", "Linux", "ubuntu", "x.org"]
+++

In a [previous post](@/blog/2009-04-25-enable-ctrl-alt-backspace-to-restart-x.md) I described to how to enable the Ctrl-Alt-Backspace key combination to restart the X server. However, those steps were applicable to Ubuntu 9.04 only and have no effect in Ubuntu 9.10 (Karmic Koala). The necessary changes to enable Ctrl-Alt-Backspace to restart X in Karmic are below.

1. Open Preferences > Keyboard and select the Layouts tab.
2. Click the Layout Options... button.
3. In the dialog window expand the "Key sequence to kill X server" entry and select the checkbox.
