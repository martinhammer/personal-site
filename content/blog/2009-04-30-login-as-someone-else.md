+++
title = "Login as someone else"
date = 2009-04-30T16:03:38Z

[taxonomies]
tags = ["administration", "commandline", "Linux", "security"]
+++

Sometimes you may want to log in with a different user account in Terminal without logging out from your X session or switching to an unused virtual console. There are two different approaches to do this in Ubuntu: interestingly, it is possible without even knowing the other user's password.

Approach 1: if you know the password of the other account (`<username>` is replaced with the account you want to log in as, e.g. `bob` or `pinky` or whatever):

`su -l <username>`

Approach 2: if you don't know their password. This only works if you have administrative privileges, i.e. your account is in the sudoers file. The password you are prompted for is your own one:

`sudo -i -u <username>`

or even execute the command from our approach 1 with sudo:

`sudo sh -c 'su -l <username>'`

Note: It goes without saying that you should behave responsibly and not abuse this to gain access to other user's data.
