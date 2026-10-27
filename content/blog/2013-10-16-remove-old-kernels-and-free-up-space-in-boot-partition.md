+++
title = "Remove old kernels and free up space in /boot partition"
date = 2013-10-16T08:39:04Z

[taxonomies]
tags = ["administration", "commandline", "Linux", "sed", "ubuntu"]
+++

This is a great one-liner which removes old kernel images and frees up space in your boot partition:

```bash
$ sudo apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve "$(uname -r | sed -r 's/-[a-z]+//')")
```

This comes from the top answer to a question on [ask ubuntu](http://askubuntu.com/questions/89710/how-do-i-free-up-more-space-in-boot).
