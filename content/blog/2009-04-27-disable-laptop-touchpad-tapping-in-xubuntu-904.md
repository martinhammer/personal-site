+++
title = "Disable laptop touchpad tapping in Xubuntu 9.04"
date = 2009-04-27T16:00:43Z

[taxonomies]
tags = ["jaunty-upgrade", "laptop", "Linux", "xubuntu"]
+++

In a [previous post](@/blog/2009-04-17-disable-laptop-touchpad-tapping-in-xubuntu.md) I detailed steps on how to disable touchpad tapping in Xubuntu 8.04. Unfortunately the package gsynaptics-mcs-plugin which provides the Xfce Settings Manager plugin is obsolete in Xubuntu 9.04 (Jaunty) and therefore the annoyance of touchpad tapping and scrolling is back after upgrading from Hardy. Also, it turns out that the responsibility of managing input devices has been moved from the X server to HAL (Hardware Abstraction Layer) and so different steps are required in Xubuntu 9.04 / Xfce 4.6:

1. Confirm that HAL is aware of the touchpad by running:

   ```bash
   lshal | grep synaptics
   ```

   The command should produce output similar to this

   ```
   input.x11_driver = 'synaptics'  (string)
   ```
2. Run the following command to create a new file to enable the SHMConfig option in HAL

   ```bash
   sudo mousepad /etc/hal/fdi/policy/shmconfig.fdi
   ```
3. Paste the following into the file and save:

   ```xml
   <?xml version="1.0" encoding="ISO-8859-1"?>
   <deviceinfo version="0.2">
     <device>
       <match key="input.x11_driver" string="synaptics">
         <merge key="input.x11_options.SHMConfig" type="string">True</merge>
       </match>
     </device>
   </deviceinfo>
   ```
4. Reboot your machine.
5. Run the following command to verify that HAL has picked up the setting

   ```bash
   lshal | grep x11_options
   ```

   It should produce output like this

   ```
      input.x11_options.SHMConfig = 'True'  (string)
   ```
6. Run the following command

   ```bash
   synclient TouchpadOff=2
   ```
7. Verify that touchpad tapping and scrolling are now disabled.
8. The same command has to be run at the startup of each session. To do this, go to Applications > Settings > Session and Startup and on the Application Autostart tab add a new entry. Name and Description can be set to whatever, Command is the same as above:

   ```bash
   synclient TouchpadOff=2
   ```
