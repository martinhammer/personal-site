+++
title = "Retrieve BIRT report name in script"
date = 2010-11-18T14:33:02Z

[taxonomies]
tags = ["birt", "Business Intelligence"]
+++

The following expression will dynamically get the file name of the report:

`reportContext.getReportRunnable().getReportName();`

Two points to note:

- The expression actually returns the full report URI rather than just the name, i.e. something like `file:/C:/BIRT/Report01.rptdesign`.
- The URI is [percent-encoded](https://secure.wikimedia.org/wikipedia/en/wiki/Percent-encoding) and so space characters will be returned as %20 and so on for other special characters, e.g. `file:/C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.5/webapps/birt-viewer/Report01.rptdesign`.
