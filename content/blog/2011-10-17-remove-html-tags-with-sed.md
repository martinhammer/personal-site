+++
title = "Remove HTML tags with sed"
date = 2011-10-17T12:16:13Z

[taxonomies]
tags = ["commandline", "Linux", "sed"]
+++

Sed can be used to strip out all HTML or XML tags from a file and get the plain text version. Suppose you have file gnulinux.html with the following contents:

```html
<p>The combination of <a href=“/gnu/linux-and-gnu.html“>GNU and Linux</a> is the <strong>GNU/Linux operating system</strong>, now used by millions and sometimes incorrectly called simply “Linux“.</p>
```

Tempting but incorrect - sed finds the longest possible match which in this case is the entire file, and thus will output nothing:

```bash
$ sed -e 's/<.*>//g' gnulinux.html
```

Correct version:

```bash
$ sed -e 's/<[^>]*>//g' gnulinux.html
The combination of GNU and Linux is the GNU/Linux operating system, now used by millions and sometimes incorrectly called simply “Linux“.
```
