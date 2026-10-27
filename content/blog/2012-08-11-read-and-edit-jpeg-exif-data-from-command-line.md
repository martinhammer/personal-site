+++
title = "Read and edit JPEG Exif data from command line"
date = 2012-08-11T05:41:47Z

[taxonomies]
tags = ["commandline", "Linux", "multimedia", "photos", "ubuntu"]
+++

Most digital cameras store [Exif data](https://en.wikipedia.org/wiki/Exif) in the JPEG photo files. This includes things like date and time, camera model and camera settings and in some cases even GPS coordinates. [jhead](http://www.sentex.net/~mwandel/jhead/) is a very useful command line utility which can read and edit the Exif data. For example, you may wish to remove the data from photos published online.

Another useful thing is to rename photos using the date and time information stored in Exif (note: read the [documentation](http://www.sentex.net/~mwandel/jhead/usage.html) before running):

```bash
$ jhead -n%Y%m%d-%H%M%S *.jpg
```

And best of all jhead is in the [Ubuntu universe repository,](http://packages.ubuntu.com/search?keywords=jhead&searchon=names&section=all) so installing it is as simple as:

```bash
$ sudo apt-get install jhead
```
