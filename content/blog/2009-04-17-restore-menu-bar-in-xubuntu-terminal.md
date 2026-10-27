+++
title = "Restore menu bar in Xubuntu Terminal"
date = 2009-04-17T12:11:31Z

[taxonomies]
tags = ["Linux", "xubuntu"]
+++

To save a bit of space, you can remove the menu bar in Xubuntu Terminal (Edit > Preferences > Appearance > uncheck "Display menubar in new window". Here are the steps to restore it later on (since you can't access the Preferences dialog without the menu itself!).

1. Run the following command to open the terminal configuration file in Mousepad:

   ```bash
   mousepad ~/.config/Terminal/terminalrc
   ```
2. Change the line `MiscMenubarDefault=FALSE` to `MiscMenubarDefault=TRUE` and save the file.
3. That's it - restart your Terminal and marvel at the beauty of its menu bar.
