+++
title = "JDBC drivers in BIRT Viewer on Tomcat"
date = 2009-08-31T14:54:15Z

[taxonomies]
tags = ["birt", "Business Intelligence", "jdbc", "tomcat"]
+++

JDBC drivers need to be put in the following location to be available in BIRT Viewer. Putting them into `<TOMCAT HOME>/common/lib` does not work in BIRT and you will get a "cannot load JDBC driver" error.

`<TOMCAT HOME>/webapps/birt/WEB-INF/platform/plugins/org.eclipse.birt.report.data.oda.jdbc_2.3.1.v20080827/drivers`

The Tomcat path and version number will depend on your environment.
