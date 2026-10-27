+++
title = "Fill missing values in BIRT charts"
date = 2009-11-19T18:26:24Z

[taxonomies]
tags = ["birt", "Business Intelligence", "charts"]
+++

The BIRT chart wizard provides an option to skip missing values in a series and connect them with the series line; however, there is no option to substitute a default value for the missing data. The screenshot below shows a chart where the series value is missing for category value 03-MAR and the "Connect Missing Values" option has been selected under the value series options:

![chart_fill_before](/uploads/2009/11/chart_fill_before.png)

There is no option in the chart wizard to fill in the missing values, i.e. replace them with a default. However, it is possible to achieve this with a simple script. In this case we check for the series name and replace the missing values with 0. To use the script, highlight the chart in the UI and click the Script tab along the bottom of the main window. Then simply paste the script below and save the report.

```javascript
function afterDataSetFilled( series, dataSet, icsc )
{
  if( series.getSeriesIdentifier() == "Series 1" )
  {
    var list = dataSet.getValues();
    for( var i = 0; i < list.length; i = i + 1 )
    {
      if( list[i] == null )
      {
        list[i] = 0;
      }
    }
  }
}
```

The screenshot below shows the chart with the script included:

![chart_fill_after](/uploads/2009/11/chart_fill_after.png)
