+++
title = "Firefox extensions for privacy and security"
date = 2012-04-20T03:24:50
draft = true

[taxonomies]
tags = ["firefox", "privacy", "Web"]
+++

This post is a summary of different mechanisms used (mainly by advertising companies) to collect personal data and track users, and how these can be avoided. It is very likely that my understanding is not even close to being complete or fully accurate (feel free to use comments for corrections and suggestions).

Note on technology: the techniques used to gather personal data and track users apply to all browsers; the countermeasures suggested here are solely for Firefox 3 (specifically, 3.6 on Linux). I don't know anything about Chrome, Safari, Internet Explorer or other browsers.

SSL

Search Engine

**Tracking Cookies**

**Super Cookies - Flash LSOs**
Local Shared Objects (LSOs) are cookie-like objects created by Adobe Flash Player.

**Super Cookies - DOM Storage**

**Browser Fingerprinting**
Each time you visit a website, certain information is shared by your browser: the user agent string, screen resolution, plugins and fonts installed and others. This gives a certain degree of uniqueness which can be used to identify and track the browser. The more unique your browser configuration, the higher the degree of uniqueness and therefore accuracy with which your browser can be tracked even if cookies are disabled. The Panopticlick project from [Electronic Frontier Foundation](https://www.eff.org/ "Electronic Frontier Foundation") provides an [in-depth discussion](https://www.eff.org/deeplinks/2010/01/primer-information-theory-and-privacy "A Primer on Information Theory and Privacy") and offers a [test of browser uniqueness](http://panopticlick.eff.org/ "Panopticlick"). Protection against fingerprinting includes use a "non-rare" browser; however given that Linux is a minority platform this is not

**Cache and History Exploits**
