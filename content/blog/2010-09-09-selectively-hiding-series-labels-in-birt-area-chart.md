+++
title = "Selectively hiding series labels in BIRT area chart"
date = 2010-09-09T12:43:49Z

[taxonomies]
tags = ["birt", "Business Intelligence", "charts"]
+++

Series labels can be shown in BIRT area charts by opening the Chart Wizard and navigating to the Format Chart tab, then selecting Series > Value (Y) Series > Show Series Labels checkbox. The result will look as shown in the screenshot below:

![Area chart with series labels shown for all series (default)](/uploads/2010/09/arealabels_01.png "Area chart with series labels")

Often there is one particular grouping (series) which is especially important and we want to draw the report viewer's attention to it by showing the labels for that series only. This cannot be achieved through the Chart Wizard UI but can be done with a bit of scripting.

The method which needs to be overriden is beforeDrawSeries. In this example, series labels will be shown for the "1-Low" series and hidden for the other ones.

```javascript
function beforeDrawSeries( series, isr, icsc )
{
  // get class of the renderer
  var type = isr.getClass().toString();
  // check for area chart renderer
  if( type == "class org.eclipse.birt.chart.render.Area" )
  {
    var val = isr.getSeriesRenderingHints().getDataPoints()[0].getSeriesDisplayValue();
    if( val == "1-Low" )
    {
      series.getLabel().setVisible( true );
    }
    else
    {
      series.getLabel().setVisible( false );
    }
  }
}
```

The result looks as follows:

![Area chart with series labels shown for one series only](/uploads/2010/09/arealabels_02.png "Area chart with series labels")
