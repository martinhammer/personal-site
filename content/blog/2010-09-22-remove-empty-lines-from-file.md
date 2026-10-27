+++
title = "Remove empty lines from file"
date = 2010-09-22T16:50:07Z

[taxonomies]
tags = ["commandline", "Linux"]
+++

Here's a quick way to remove empty lines from a file using the Linux command line:

`cat file1 | sed /^$/d > file2`

Where file1 is the input file containing empty lines and file2 is a newly created file with empty lines removed.
