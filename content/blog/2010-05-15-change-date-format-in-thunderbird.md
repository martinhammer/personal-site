+++
title = "Change date format in Thunderbird"
date = 2010-05-15T08:20:33Z

[taxonomies]
tags = ["Linux", "thunderbird"]
+++

In order to show dates as yyyy-mm-dd instead of the default (for US locale) mm/dd/yyyy I use the following script to launch Thunderbird in Ubuntu (tested with Thunderbird 3.0.4 on Lucid):

```bash
#!/bin/sh
export LC_TIME=en_DK.utf8
[ "$LC_ALL" != "$LC_TIME" ] && unset LC_ALL
exec thunderbird "$@"
```

This handy tip comes from [mozillaZine](http://kb.mozillazine.org/Date_display_format).
