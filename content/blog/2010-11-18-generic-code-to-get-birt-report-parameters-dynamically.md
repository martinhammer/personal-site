+++
title = "Generic code to get BIRT report parameters dynamically"
date = 2010-11-18T14:42:00Z

[taxonomies]
tags = ["birt", "Business Intelligence", "parameters", "scripting"]
+++

**UPDATE:** For an improved version of the code which works correctly with parameter groups and cascading parameters please see [this updated post](@/blog/2011-06-09-generic-code-to-get-birt-report-parameters-dynamically-new-and-improved.md "Generic code to get BIRT report parameters dynamically (new and improved!)"). Thank you to Stork for pointing out the problem with this code.

The traditional way of accessing BIRT report parameters from script is through the expression [ReportContext.getParameterValue( parameterName )](http://www.birt-exchange.com/be/documentation/BIRT_231/EngineJavadoc/enginescript/api/org/eclipse/birt/report/engine/api/script/IReportContext.html#getParameterValue%28java.lang.String%29). Naturally this method requires one to know the name of the parameter at design time (i.e. when writing the script), which is fine in most cases.

There are however situations in which a more generic approach is preferable. For example, one might wish to implement a usage statistics system, where each time a report is run certain information is persisted in a usage tracking database. This will include the name of the report, the time of execution and perhaps also the selected parameter values. The obvious difficulty is that different reports are likely to have different sets of parameters. In anything but the simplest and smallest set of reports, it would be impractical to edit the code individually for each report. On the contrary, the appropriate approach is to create a generic library component which can be maintained in one place and referenced from the reports.

The code below is a simple demonstration how the list of parameters and their values can be read dynamically at run-time. To see it working, simply paste it into the onPrepare method of a text element.

```javascript
var sOutput = "";
var parameterArray = reportContext.getDesignHandle().getParameters();
var paramaterCount = parameterArray.getCount();
for( var i = 0; i < paramaterCount; i++ )
{
  var sParName = parameterArray.get( i ).getFullName();
  var sParVal = reportContext.getParameterValue( sParName );
  sOutput = sOutput + sParName + " = " + sParVal + "\n";
}
this.content = sOutput;
```
