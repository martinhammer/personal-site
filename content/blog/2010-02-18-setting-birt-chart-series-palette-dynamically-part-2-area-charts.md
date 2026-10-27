+++
title = "Setting BIRT chart series palette dynamically, part 2 – area charts"
date = 2010-02-18T14:08:23Z

[taxonomies]
tags = ["birt", "Business Intelligence", "charts"]
+++

In a [previous post](@/blog/2010-01-13-setting-birt-chart-series-palette-dynamically.md) we described how to set the series palette dynamically for a pie chart. A slightly different approach is required for area charts.

Let's recap on the problem at hand: in what is a fairly common scenario, one chooses the palette colours to match with particular category values. For example, in the chart below "High" is represented in green, "Mid" in orange and "Low" in red.

![Area chart with three categories](/uploads/2010/02/dynpal05.png)

However, if for a particular dataset of the of category values is not present, the palette colours are still used in the same order, meaning the "Mid" area is now shown as red and "High" as orange. This is confusing for the end user.

![Area chart with only two categories, palette colours are confusing](/uploads/2010/02/dynpal06.png)

Once again we can solve this issue with some scripting of the chart. In this approach, we will override the `beforeDrawSeries` method to check for category value and set the fill colour based on that:

```javascript
function beforeDrawSeries( series, isr, icsc )
{
  // get class of the renderer
  var type = isr.getClass().toString();
  // check for area chart renderer
  if( type == "class org.eclipse.birt.chart.render.Area" )
  {
    // get global counter
    // 1* forces conversion to int
    var i = 1 * icsc.getExternalContext().getScriptable().getPersistentGlobalVariable( "seriesCounter" );
    // get category value
    var val = isr.getSeriesRenderingHints().getDataPoints()[0].getSeriesDisplayValue();
    // set fill colour based on category value
    if( val == "1-Low" )
    {
      isr.getSeriesDefinition().getSeriesPalette().getEntries()[i].set( 242, 88, 106, 128 );
    }
    else if( val == "2-Mid" )
    {
      isr.getSeriesDefinition().getSeriesPalette().getEntries()[i].set( 232, 172, 57, 128 );
    }
    else if( val == "3-High" )
    {
      isr.getSeriesDefinition().getSeriesPalette().getEntries()[i].set( 128, 255, 128, 128 );
    }
    // increment global counter
    i = i + 1;
    // "" forces conversion to string
    icsc.getExternalContext().getScriptable().setPersistentGlobalVariable( "seriesCounter", "" + i );
  }
}
```

You may have noticed that a global variable `seriesCounter` is used to hold the reference to the current series. This is because the `beforeDrawSeries` method is called several times, once for each category value present in the data. Another bit of code is therefore required to define the `seriesCounter` variable in the `initialize` method of the report:

```javascript
reportContext.setPersistentGlobalVariable( "seriesCounter", "0" );
```

One more point to note is that `reportContext.setPersistentGlobalVariable` only accepts string values, hence the "hack" to convert between a number and a string every time the value is retrieved or stored.

![Area chart with only two categories, palette colours dynamically set](/uploads/2010/02/dynpal07.png)
