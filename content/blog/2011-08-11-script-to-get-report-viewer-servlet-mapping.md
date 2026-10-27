+++
title = "Script to get Report Viewer servlet mapping"
date = 2011-08-11T02:32:27Z

[taxonomies]
tags = ["birt", "Business Intelligence", "scripting", "servlet"]
+++

Sometimes it may be useful to know inside the report which [servlet mapping](http://www.eclipse.org/birt/phoenix/deploy/viewerUsage2.2.php#servlets) is used to run the report (e.g. frameset, run, preview).

```javascript
var sMapping = reportContext.getHttpServletRequest.getRequestURI();
var nPos = sMapping.lastIndexOf( "/" ) + 1;
this.text = sMapping.substring( nPos );
```

You can place the above code inside a label to see the servlet mapping.
