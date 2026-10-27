+++
title = "Generic code to get BIRT report parameters dynamically (new and improved!)"
date = 2011-06-09T16:57:31Z

[taxonomies]
tags = ["birt", "Business Intelligence", "parameters", "scripting"]
+++

In an [earlier post](@/blog/2010-11-18-generic-code-to-get-birt-report-parameters-dynamically.md "Generic code to get BIRT report parameters dynamically") we discussed a generic way to dynamically get the list of report parameters at run time without having to hardcode the parameter names in the script. As was correctly pointed out in the comments, the code did not work for parameter groups (and also cascading parameters). However, it is possible to modify the code to get it working even for those cases, and the change is not a huge one.

The main difference is we will use the method [getAllParameters()](http://www.birt-exchange.com/be/documentation/BIRT_231/EngineJavadoc/model/api/org/eclipse/birt/report/model/api/ModuleHandle.html#getAllParameters%28%29) instead of [getParameters()](http://www.birt-exchange.com/be/documentation/BIRT_231/EngineJavadoc/model/api/org/eclipse/birt/report/model/api/ModuleHandle.html#getParameters%28%29) of [ReportDesignHandle](http://www.birt-exchange.com/be/documentation/BIRT_231/EngineJavadoc/model/api/org/eclipse/birt/report/model/api/ReportDesignHandle.html). It seems that getParameters returns only the "top level" parameters, whereas getAllParameters flattens the groups and the nested as well as top level parameters. One thing to watch out for is that the return types of the two functions are different: [java.util.List](http://download.oracle.com/javase/1.5.0/docs/api/java/util/List.html) (getAllParameters) vs. [org.eclipse.birt.report.model.api.SlotHandle](http://www.birt-exchange.com/be/documentation/BIRT_231/EngineJavadoc/model/api/org/eclipse/birt/report/model/api/SlotHandle.html) (getParameters). Also, we have included a check for the class of the parameter entry in the list, in order to exclude the groups themselves. You can comment out the if statement in case you wish to see the group names as well.

Here is the updated working code:

```javascript
var sOutput = "";
var parameterArray = reportContext.getDesignHandle().getAllParameters();
var parameterCount = parameterArray.size();
for( var i = 0; i < parameterCount; i++ )
{
  var sParClass = parameterArray.get( i ).getClass().toString();
  if( sParClass == "class org.eclipse.birt.report.model.api.ScalarParameterHandle" )
  {
    var sParName = parameterArray.get( i ).getFullName();
    var sParVal = reportContext.getParameterValue( sParName );
    sOutput = sOutput + sParName + " = " + sParVal + "\n";
  }
}
this.content = sOutput;
```
