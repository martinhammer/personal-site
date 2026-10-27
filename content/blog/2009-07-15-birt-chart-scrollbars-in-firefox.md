+++
title = "BIRT chart scrollbars in Firefox"
date = 2009-07-15T15:27:55Z

[taxonomies]
tags = ["birt", "Business Intelligence", "charts", "firefox"]
+++

There's a strange bug in BIRT charting with Firefox on Linux. Some charts are rendered with horizontal and vertical scrollbars, sort of like an embedded frame which is too big to fit in the allocated space.

The fix for this annoyance is straightforward, simply change the output format from SVG to PNG on the first tab of the chart dialog. This also makes scrolling smoother and improves overall responsiveness of Firefox when a report with a lot of charts is displayed.
