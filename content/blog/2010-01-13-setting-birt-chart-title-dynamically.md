+++
title = "Setting BIRT chart title dynamically"
date = 2010-01-13T12:55:10Z

[taxonomies]
tags = ["birt", "Business Intelligence", "charts"]
+++

It is possible to set the title of a chart dynamically, for example based on parameter values, using a little bit of scripting. The example below assumes that two parameters are defined ("Year" and "Month" with values such as "2010" and "Jan").

```javascript
function beforeGeneration( chart, icsc )
{
    var sYear 	= icsc.getExternalContext().getScriptable().getParameterValue( "Year" );
    var sMonth 	= icsc.getExternalContext().getScriptable().getParameterValue( "Month" );
    var sTitle	= "Chart for " + sMonth + " " + sYear;
    chart.getTitle().getLabel().getCaption().setValue( sTitle );
}
```

The title of the chart will be set dynamically based on report parameter values.
