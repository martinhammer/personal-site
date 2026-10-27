+++
title = "Tar gotcha: extract from multiple tar files in one go"
date = 2014-10-18T07:48:47Z

[taxonomies]
tags = ["administration", "commandline", "Linux", "scripting"]
+++

Suppose you have a monthly process to archive some data such as log files etc. Each month a separate archive file is created, and so after a few months you will have several archive files - for example as shown below:

```
archive.2014-08.tar.gz
archive.2014-09.tar.gz
archive.2014.10.tar.gz
```

Now if you wish to extract your data from all three files, you could run individual commands such as:

```bash
$ tar -zxvf archive.2014-08.tar.gz
$ tar -zxvf archive.2014-09.tar.gz
$ tar -zxvf archive.2014-10.tar.gz
```

This works fine. However the following won't work if you want a one-line which does them all in one short:

```bash
$ tar -xzvf *.tar.gz
tar: archive.2014-09.tar.gz: Not found in archive
tar: archive.2014-10.tar.gz: Not found in archive
```

Basically the way that tar command works, if more than one filename (or an expansion) is passed as an argument, it will look for the second, third, etc. files inside the first file. So the error is saying it cannot find the second and third archive file inside the first one (archive.2014-08.tar.gz). So in essence the tar command itself really does have to be called individually for each file. The way to simplify this on a one-liner is to use the xargs command which will do exactly that:

```bash
$ ls *.tar.gz | xargs -n1 tar -xzvf
```
