+++
title = "Set screen to grayscale with Compiz"
date = 2009-10-23T16:00:07Z

[taxonomies]
tags = ["compiz", "Linux"]
+++

[Compiz](http://www.compiz.org/) sometimes gets bad press because of the gimmicky, bling nature of some of the plugins. Whilst it's hard to see the real-world benefit of painting fire or rain drops on the screen, on the other hand it has to be said that Compiz gives Linux the wow factor that certain users are drawn to. And of course there is the odd practical thing one can achieve with it.

One of these which I have found after a bit of searching is a very simple and straightforward way of turning the screen into grayscale (or monochrome). You might ask why anyone would want to turn their screen into grayscale, and my answer is: it is a welcome respite for tired eyes, especially when working at night or in a dark environment.

To achieve this effect, you need to have Compiz itself installed, as well as the `compizconfig-settings-manager` package. This gives you an entry in System > Preferences called CompizConfig Settings Manager. One of the plugins available under the Accessibility section of the Settings Manager is "Color filter". It comes with a set of predefined filter files one of which is grayscale. Key bindings are available for active window or the whole screen and for switching between the filters.

Depending on your preference, you can either cyclicaly switch to the grayscale filter or just remove the other filters. For reference, the default filter files including grayscale are kept in `/usr/share/compiz/filters`.
