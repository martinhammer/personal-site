+++
title = "Two quick changes in Firefox about:config"
date = 2009-04-29T12:41:54Z

[taxonomies]
tags = ["firefox", "Web"]
+++

Here are two quick and simple changes which I always make on a fresh Firefox install. They are both accessed through the about:config URI. Simply type about:config to the Firefox address bar and accept the disclaimer. This reveals a lot of "hidden" settings which cannot be changed directly through the preferences dialogs.

- To make backspace button go back in history (this is default in Windows but not in Linux), change the value of `browser.backspace_action` to `0`.
- To open the result of search from the search bar in a new tab change the value of `browser.search.openintab` to `true`.

A reference of these and other about:config parameters can be found in the [MozillaZine Knowledge Base](http://kb.mozillazine.org/Firefox_:_FAQs_:_About:config_Entries).
