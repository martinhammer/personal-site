+++
title = "Fixing Eclipse BIRT PermGen space errors on Ubuntu"
date = 2009-07-18T05:08:33Z

[taxonomies]
tags = ["birt", "Business Intelligence", "eclipse", "java", "Linux", "ubuntu"]
+++

Unfortunately the default memory settings for Eclipse are not sufficient to run BIRT properly on Ubuntu. Editing BIRT reports was fine on my machine, but the preview always crashed or froze Eclipse. When run from the command line, errors like these came up:

```
Exception in thread "SocketListener0-0" java.lang.OutOfMemoryError: PermGen space
Exception in thread "SocketListener0-1" java.lang.OutOfMemoryError: PermGen space
Exception in thread "SocketListener0-2" java.lang.OutOfMemoryError: PermGen space
java.lang.OutOfMemoryError: PermGen space
```

Googling for these errors reveals that it is sadly a common problem with Eclipse. The fix is to increase the memory available to the Java process. This can be done in three different ways: Passing vmargs parameters from command line (not practical), editing the /usr/lib/eclipse/eclipse.ini file (did not work for me) or setting the parameters in the user's eclipserc file (see below).

After some trial and error and more googling, the third option is what I went for:

1. Close Eclipse if it is running.
2. Check whether the following file already exists: `~/.eclipse/eclipserc`
3. If yes, skip to step 4. However, it looks like a bug that this file is not created by default and moreover there is no sample in Ubuntu install. To get the vanilla file, copy and paste it from [this post on Ubuntu forums](http://ubuntuforums.org/showthread.php?t=190384) and save it in the above location.
4. Open the file and change this line

   ```bash
   VMARGS="-Xmx256M"
   ```

   to something like

   ```bash
   VMARGS="-Xmx256M -XX:PermSize=256M -XX:MaxPermSize=512M"
   ```

   These values worked fine for me but you may have to tweak them.
5. Save the file and start Eclipse. You should now be able to run preview of BIRT reports.
