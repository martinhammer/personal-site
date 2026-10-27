+++
title = "Fix for Nautilus shows hidden files by default"
date = 2016-01-26T04:05:15Z

[taxonomies]
tags = ["administration", "Linux", "nautilus", "ubuntu"]
+++

[Here's the fix](http://ubuntuforums.org/showthread.php?t=2133298&s=5a4f2f9fde9a7d0fc0491bbe59506cdf&p=12623240#post12623240) for a problem where Nautilus shows hidden files by default.

- `$ dconf-editor`
- org -> gtk -> settings -> file-chooser
- Uncheck show-hidden
- Close Nautilus and open again
