+++
title = "Split large files"
date = 2009-09-18T14:33:20Z

[taxonomies]
tags = ["commandline", "Linux"]
+++

Sometimes it is necessary to split a large file into several smaller ones, for example so that they fit on a CD or USB disk or can be attached to email. It's very easy to do this from command line.

Suppose you have a file of 500 MiB called "large\_file" and to split it into 5 files of 100 MiB each:

`split --bytes=100m large_file large_file_part_`

This will create 5 files with names as follows:

```
large_file_part_aa
large_file_part_ab
large_file_part_ac
large_file_part_ad
large_file_part_ae
```

The following command would then be used to join the parts back together:

`cat large_file_part_* > large_file`
