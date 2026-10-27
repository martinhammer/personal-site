+++
title = "Jaunty notifications in Thunderbird and Firefox"
date = 2009-05-23T17:45:08Z

[taxonomies]
tags = ["firefox", "jaunty-upgrade", "Linux", "notifications", "thunderbird", "ubuntu"]
+++

One of the major new features in Ubuntu 9.04 (Jaunty) has of course been the [new notification system](http://www.markshuttleworth.com/archives/265). For what it's worth, I think it's a pretty good, bold piece of work and the notifications look pretty good. The trouble is, as with any new framework, that not all applications out there are using the new notifications, leaving the overall impression somewhat disjointed. Good news is that with a bit of tweaking Firefox and Thunderbird can be made to send their messages to the notification area.

**Firefox:** Credit for this tip to the [OMG! Ubuntu blog](http://d0od.blogspot.com/2009/05/firefox-use-notification-jaunty.html): For Firefox, there is an [add-on](https://addons.mozilla.org/en-US/firefox/addon/9622) (currently experimental) which sends the "Download complete" messages to the notification area. You should also change the `browser.download.manager.showAlertOnComplete` setting to `false` under about:config to stop Firefox's native little notification from popping up.

**Thunderbird:** For Thunderbird's "New email" notification, I found that the [GNOME Mail Notification](http://www.nongnu.org/mailnotify/) applet works very well. Follow these steps to set it up:

1. First install Mail Notification by running

   ```bash
   sudo apt-get install mail-notification
   ```
2. Once installed, open the Mail Notification config dialog from System > Preferences > Mail Notification.
3. On the first tab (General) click the Add button and browse to the Inbox file of the Thunderbird mail account for which you want to display notifications. The Inbox file should be under location similar to this one :

   ```
   /home/<your user>/.mozilla-thunderbird/<random code>.default/Mail/<your account>/Inbox
   ```

   (.mozilla-thunderbird is a hidden directory in your home directory).
4. Make sure that on the last tab (Message Popups) the "Enable message popups" check box is ticked.
5. Now configure Mail Notification to run on session start up: open System > Preferences > Startup Applications and click Add. Name and Description can be set to anything, under command enter

   ```bash
   mail-notification --sm-disable
   ```
6. Last step is to open Thunderbird and disable its native notification messages by going to Edit > Preferences and on the General tab uncheck "Show an alert".

All going well you should now have Thunderbird using the new notifications and a cool applet in your notification area showing you if there are any unread messages in your Inbox.
