+++
title = "Stop system beep in VMware Player"
date = 2009-05-25T13:41:52Z

[taxonomies]
tags = ["vmware", "Windows"]
+++

Here's how to stop the annoying beep (system bell) in VMware Player. These steps were tested with VMware Player 2.5 running a Debian Lenny server (guest) under Windows XP Professional (host).

1. Open the following file in Notepad: `C:\Documents and Settings\<your user>\Application Data\VMware\preferences.ini` (the drive might be different depending on your setup).
2. Add the following line at the end and save:

   ```ini
   mks.noBeep = "TRUE"
   ```
3. Open the virtual machine's VMX configuration file in Notepad.
4. Add the following line (same as above) at the end and save:

   ```ini
   mks.noBeep = "TRUE"
   ```
5. Launch VMware Player and run the virtual machine - the beep should be gone!
