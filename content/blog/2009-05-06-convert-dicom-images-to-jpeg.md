+++
title = "Convert DICOM images to JPEG"
date = 2009-05-06T13:27:27Z

[taxonomies]
tags = ["commandline", "Linux", "multimedia", "ubuntu"]
+++

Medical images, e.g. X-Rays, are commonly stored in the [DICOM format](http://en.wikipedia.org/wiki/Dicom). By default you won't be able to open these in Ubuntu, but there is actually a [package in the repositories](http://packages.ubuntu.com/jaunty/dcmtk) which lets you convert DICOM image files to more common formats, e.g. JPEG, PNG or bitmap.

```bash
sudo apt-get install dcmtk
dcmj2pnm +oj img00000 img00000.jpg
```

The above commands will install the [dcmtk package](http://packages.ubuntu.com/jaunty/dcmtk) and take a DICOM image img00000 and convert it to [lossy JPEG](http://en.wikipedia.org/wiki/Jpeg#JPEG_compression) image img00000.jpg. The `dcmj2pnm` command also supports other output formats, e.g. PNG. To print the help text simply run

`dcmj2pnm -h`

There are other commands in the dcmtk package, e.g. `dcmcjpeg` which provides a lot of JPEG encoding options.
