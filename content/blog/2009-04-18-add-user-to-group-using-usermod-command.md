+++
title = "Add user to group with usermod"
date = 2009-04-18T10:12:30Z

[taxonomies]
tags = ["administration", "commandline", "Linux"]
+++

Here is a very simple one which caught me out: you want to add your user to a group through command line. The command is very straightforward:

`sudo usermod -aG tools hammer`

This adds the user "hammer" to the group "tools". Notice the -a switch (for add). This means "hammer" will become member of "tools" and keep his exiting group memberships. However, if you run the command without the -a switch:

`sudo usermod -G tools hammer`

Then "hammer" becomes member of "tools" (all well and good) but has lost its other group associations defined previously - including on Ubuntu the group "admin". So that next time you log in (you need to log out and back in for the group memberships to be reflected properly) and try to run sudo something you get a nice message like so:

`hammer is not in the sudoers file. This incident will be reported.`

Luckily, I had another user with admin priviledges on the machine and so was able to add all the groups which I removed by mistake. In any case, I will now remember to include the -a option next time I run usermod to add user to a group!
