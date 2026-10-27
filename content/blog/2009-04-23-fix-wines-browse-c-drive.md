+++
title = "Fix Wine's Browse C: Drive"
date = 2009-04-23T14:22:00Z

[taxonomies]
tags = ["Linux", "wine", "xubuntu"]
+++

[Wine](http://www.winehq.org/) adds a menu entry "Browse C: Drive" in the Applications menu. By default, this doesn't work and produces an error message in Xubuntu 8.04. Here's how to fix it.

1. Run the following command to open the configuration file which controls what the menu entry does:

   ```bash
   sudo mousepad /usr/share/applications/wine-browsedrive.desktop
   ```
2. Replace the line

   ```desktop
   Exec=xdg-open ~/.wine/drive_c
   ```

   with the line

   ```desktop
   Exec=xdg-open $HOME/.wine/drive_c
   ```
3. Save, log out and back in (or Ctrl-Alt-Backspace to restart X) and the menu should now open the drive\_c directory in Thunar.

And what is the unfamiliar `xdg-open` command, one might ask? According to its man page, it opens a URL (file, http, ftp) in the user's preferred application. But apparently it does not recognize the ~ shorthand for the current user's home directory.
