+++
title = "Remove OC4J auto-startup after installing OBIEE"
date = 2009-05-19T15:29:54Z

[taxonomies]
tags = ["Business Intelligence", "obiee", "oracle", "Windows"]
+++

Installing Oracle BI Enterprise Edition (OBIEE) will by default also install the OC4J application server. On Windows machines, it is not installed as a service, instead it runs in a dedicated command shell window. By default, OC4J will start automatically at the session startup, not only bringing up the annoying command line window but also slowing down your system. There is no setting in the installer to prevent this.

To prevent the automatic startup, open Registry Editor and remove the value "oc4j" under the key `HKEY_LOCAL_MACHINESOFTWAREMicrosoftWindowsCurrentVersionRun`.

There is also a way to [make OC4J into a Windows service](http://radio.weblogs.com/0132383/stories/2004/04/28/oc4jAsAWindowsService.html), although I haven't tried this myself.
