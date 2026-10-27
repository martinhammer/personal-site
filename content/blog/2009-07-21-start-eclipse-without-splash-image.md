+++
title = "Start Eclipse without splash image"
date = 2009-07-21T13:33:48Z

[taxonomies]
tags = ["eclipse", "Linux"]
+++

Recently it's happened a few times that the splash image, normally only shown while Eclipse is being loaded, remains visible even after Eclipse is fully loaded (using Eclipse 3.2.2 on Ubuntu 9.04). Even though it is only a minor annoyance since the splash can be closed from the Window List (aka task bar), I prefer no to show the splash image at all. This can be achieved by editing the file `/usr/lib/eclipse/eclipse.ini` and adding `-nosplash` on top.
