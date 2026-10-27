+++
title = "Network Manager woes in Ubuntu 16.04"
date = 2016-07-15T06:12:40Z

[taxonomies]
tags = ["administration", "Linux", "network", "network-manager", "ubuntu"]
+++

Lots of issues with Network Manager in Ubuntu 16.06 LTS, in particular connecting to wifi after suspend/resume. Restarting the Network Manager service seems to work for me.

```bash
sudo systemctl restart network-manager.service
```
