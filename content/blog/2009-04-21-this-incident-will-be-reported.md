+++
title = "This incident will be reported"
date = 2009-04-21T01:23:12Z

[taxonomies]
tags = ["administration", "commandline", "Linux"]
+++

My [recent misadventures](@/blog/2009-04-18-add-user-to-group-using-usermod-command.md) with adding a group membership for my user and in the process managing to remove all other groups (including admin) got me thinking about the message "`... is not in the sudoers file. This incident will be reported.`" Exactly where and how and to whom is this reported?

Well, according to [clever people on linuxquestions.org](http://www.linuxquestions.org/questions/ubuntu-63/this-incident-will-be-reported-683421/), the log file where unsuccessful sudo attempts are logged (as well as other things related to authentication) is `/var/log/auth.log`. The command below will show you just those entries for unsucessful sudo attempts:

`grep "user NOT in sudoers" /var/log/auth.log`

Note also that a new file is created once the log reaches a certain size, and older files are archived. So if you need to check properly you will also want to look into the archived files (listing from my old Xubuntu laptop shown below):

```bash
ls -l /var/log/auth.log*
-rw-r----- 1 syslog adm  2319 2009-04-20 21:38 /var/log/auth.log
-rw-r----- 1 syslog adm 68936 2009-04-20 06:33 /var/log/auth.log.0
-rw-r----- 1 syslog adm  3697 2009-04-13 06:17 /var/log/auth.log.1.gz
-rw-r----- 1 syslog adm  1182 2009-04-04 10:17 /var/log/auth.log.2.gz
-rw-r----- 1 syslog adm  2088 2009-03-26 19:04 /var/log/auth.log.3.gz
```
