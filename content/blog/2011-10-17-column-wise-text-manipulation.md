+++
title = "Column-wise text manipulation"
date = 2011-10-17T17:02:14Z

[taxonomies]
tags = ["commandline", "Linux", "sed"]
+++

GNU/Linux includes many utilities for working with text files through the shell. In this post we take a quick look at accessing and manipulating text files in a "column-wise" mode.

Suppose you have the following two files, each with two columns separated by the TAB character.

```bash
$ cat file1
Alice   Paris
Bob     Tokyo
Mary    London
John    New York
```

```bash
$ cat file2
13 May    Orange
19 Oct    Blue
11 Nov    Black
29 Feb    Red
```

The data in the two files are in fact related, i.e. file2 contains the date of birth and favourite colour of the people mentioned in file1 (assuming also that the files are sorted correctly). It would make sense to combine the two files together so that each row has the full data for each person. The `paste` command does just that.

```bash
$ paste file1 file2 > file3
$ cat file3
Alice   Paris     13 May    Orange
Bob     Tokyo     19 Oct    Blue
Mary    London    11 Nov    Black
John    New York  29 Feb    Red
```

Suppose that we are only interested in the name and date of birth of each person, and we can discard the hometown and favourite colour information. The `cut` command is what we shall use:

```bash
$ cut file3 -f 1,3 > file4
$ cat file4
Alice   13 May
Bob     19 Oct
Mary    11 Nov
John    29 Feb
```

Our next and final requirement is to reorder the columns differently. Instead of having the name followed by date of birth, suppose we want to have the columns the other way round. Unfortunately `cat -f 3,1` produces exactly the same output as `cut -f 1,3`, so the `cut` command will not be sufficient. We have to use `sed` instead.

```bash
$ sed -e 's/\([^\t]*\)\t\([^\t]*\)/\2\t\1/' file4 > file5
$ cat file5
13 May    Alice
19 Oct    Bob
11 Nov    Mary
29 Feb    John
```

How does that work? Well `\([^\t]*\)` is a "named expression" which matches all characters except TAB. The search pattern looks for two of them, separated by TAB (`\t`). In the replace-with part, they are referred to as `\2` and `\1`, again separated by `\t`.

Of course if file5 was what we ultimately wanted from the beginning as our output, we could have simply piped commands together:

```bash
$ paste file1 file2 | cut -f 1,3 | sed -e 's/\([^\t]*\)\t\([^\t]*\)/\2\t\1/' > file5
```

or alternatively

```bash
$ paste file1 file2 | sed -e 's/\([^\t]*\)\t\([^\t]*\)\t\([^\t]*\)\t\([^\t]*\)/\3\t\1/' > file5
```
