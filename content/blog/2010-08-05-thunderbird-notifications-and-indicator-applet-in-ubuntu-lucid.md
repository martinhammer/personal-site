+++
title = "Thunderbird: Notifications and Indicator Applet in Ubuntu Lucid"
date = 2010-08-05T14:59:53Z

[taxonomies]
tags = ["Linux", "lucid-upgrade", "notifications", "thunderbird", "ubuntu"]
+++

This post is an update on integrating [Thunderbird](http://www.mozillamessaging.com/thunderbird/) with Ubuntu's notification system. For Ubuntu 10.04 Lucid Lynx it supersedes my [earlier post on the topic](@/blog/2009-05-23-jaunty-notifications-in-thunderbird-and-firefox.md) which was applicable previous versions of Ubuntu (Jaunty and Karmic).

The big difference in Lucid Lynx is the [Indicator Applet](https://wiki.ubuntu.com/DesktopExperienceTeam/ApplicationIndicators) and the "Me Menu", both of these incorporating features related to the "social from the start" marketing tagline. In particular, the Indicator Applet integrates with [Evolution](http://projects.gnome.org/evolution/), Ubuntu's default mail client, to show new email notifications and allow quick access to the mail client. Once again, no out-of-the-box integration with Thunderbird. So the challenge is twofold: integrate with the notification mechanism (black pop-ups) as well as the Indicator Applet. The [Mail Notification](http://www.nongnu.org/mailnotify/) extension unfortunately falls short in the latter part.

Luckily, Ruben Verweij has developed libnotify-mozilla, a Thunderbird extension which works just great for both of the above requirements. Be sure to check out the blog ([here](http://ubublogger.wordpress.com/libnotify-for-mozilla/) and [here](http://ubublogger.wordpress.com/tag/libnotify-mozilla/)) and the project's [Launchpad page](http://ubublogger.wordpress.com/libnotify-for-mozilla/) to get the details and latest news. Here are the steps to set up the extension:

1. Download the [Mozilla Notifications Extensions](https://addons.mozilla.org/en-US/thunderbird/addon/11530/) .xpi file and save it in a temporary location on your system.
2. Open Thunderbird and install the extension (Tools > Add-ons > Install).
3. Disable the native Thunderbird notifications by unticking "When messages arrive: Show an alert" in Edit > Preferences.
4. Install libnotify-bin package (execute in Terminal):

   ```bash
   sudo apt-get install libnotify-bin
   ```
5. In order to have Thunderbird entry in the menu even when it is not running. First create a new file as follows (run from Terminal):

   ```bash
   mkdir -p ~/.config/indicators/messages/applications
   gksudo gedit ~/.config/indicators/messages/applications/thunderbird
   ```
6. Then paste the following text in the file and save it:

   ```
   /usr/share/applications/thunderbird.desktop
   ```
7. (optional) If you wish you can remove the Evolution entries from the indicator menu. Note: because of [bug 533021](https://bugs.launchpad.net/ubuntu/+source/indicator-messages/+bug/533021), this is a workaround which will remove Evolution from the menu for all users on the system, not just yourself.

   ```bash
   mkdir -p ~/.config/indicators/messages/applications-blacklist
   sudo mv /usr/share/indicators/messages/applications/evolution ~/.config/indicators/messages/applications-blacklist
   ```

   (Once the above bug is resolved in the future, move the file back to its original location and create a softlink to it from the blacklist directory: `ln -s /usr/share/indicators/messages/applications/evolution ~/.config/indicators/messages/applications-blacklist/evolution`)
8. Log out from your user session and back in.
