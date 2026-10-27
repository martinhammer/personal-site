+++
title = "Check installed packages from commandline"
date = 2009-05-28T13:31:24Z

[taxonomies]
tags = ["commandline", "Linux", "ubuntu"]
+++

To check for installed packages from the command line, use the `dpkg` command with the `--get-selections` option. This returns all packages installed on your system (most likely a lot!). So it is best to use `grep` to narrow down the search results. For example, the following command lists all packages with "fire" in the package name:

```bash
dpkg --get-selections | grep fire
firefox                        install
firefox-3.0                    install
firefox-3.0-branding           install
firefox-3.0-dom-inspector      install
firefox-dom-inspector          install
mozilla-firefox-locale-en-gb   install
```

An alternative which shows more information, including the exact version of the package and a description is the `-l` option. Because `grep` works with the output of the `dpkg` command, this will also include packages where the search term appears in the description, such as ufw on the last line in the output below because of "firewall".

```bash
$ dpkg -l | grep fire
ii firefox                         3.0.10+nobinonly-0ubuntu0.9.04.1              meta package for the popular mozilla web bro
ii firefox-3.0                     3.0.10+nobinonly-0ubuntu0.9.04.1              safe and easy web browser from Mozilla
ii firefox-3.0-branding            3.0.10+nobinonly-0ubuntu0.9.04.1              Package that ships the firefox branding
ii firefox-3.0-dom-inspector       3.0.10+nobinonly-0ubuntu0.9.04.1              dummy upgrade package for firefox-3.0-dom-in
ii firefox-dom-inspector           3.0.10+nobinonly-0ubuntu0.9.04.1              meta package for firefox-dom-inspector
ii mozilla-firefox-locale-en-gb    2.0.0.7+1-0ubuntu4              Mozilla Firefox English language/region pack
ii ufw                             0.27-0ubuntu2              program for managing a netfilter firewall
```

Using the above commands can be a faster and more efficient alternative to searching for installed packages in Synaptic.
