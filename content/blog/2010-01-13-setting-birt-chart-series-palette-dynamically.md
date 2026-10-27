+++
title = "Setting BIRT chart series palette dynamically"
date = 2010-01-13T18:05:03Z

[taxonomies]
tags = ["birt", "Business Intelligence", "charts"]
+++

BIRT series palette is static by default, meaning colours are applied in the specified order without being tied to the actual category values. This is ok in most cases, however consider the following scenario. In our data we expect three category values, "1-Low", "2-Mid" and "3-High" and the chart series palette has been set to reflect this. Red colour is first in the list, so it will used for the first category value ("1-Low") etc.:

![Chart series palette](/uploads/2010/01/dynpal01.png)

With all three category values in the dataset everything works as expected:

![Pie chart with static palette colours and all categories](/uploads/2010/01/dynpal02.png)

However, suppose that for a particular dataset the value "1-Low" is not present (perhaps a month when the business is performing well?). In this case the palette colours will still be applied in the same order starting with red, leading to inconsistency and quite possibly confusing the users:

![Pie chart with colours from a static palette](/uploads/2010/01/dynpal03.png)

This problem can be overcome by dynamically scripting the series colours based on the category value. Two methods need to be scripted, one for the chart itself and the other for the legend (otherwise the chart and the legend will not match!).

```javascript
function beforeDrawDataPoint( dph, fill, icsc )
{
    var sValue = dph.getBaseDisplayValue();
    if( sValue == "1-Low" )
    {
        fill.set( 242, 88, 106, 255 );
    }
    else if( sValue == "2-Mid" )
    {
        fill.set( 232, 172, 57, 255 );
    }
    else if( sValue == "3-High" )
    {
        fill.set( 128, 255, 128, 255 );
    }
}
```

```javascript
function beforeDrawLegendItem( lerh, bounds, icsc )
{
    var sValue = lerh.getLabel().getCaption().getValue();
    var fill = lerh.getFill();
    if( sValue == "1-Low" )
    {
        fill.set( 242, 88, 106, 255 );
    }
    else if( sValue == "2-Mid" )
    {
        fill.set( 232, 172, 57, 255 );
    }
    else if( sValue == "3-High" )
    {
        fill.set( 128, 255, 128, 255 );
    }
}
```

The `set` method can take either three integer parameters with values between 0 and 255 for Red, Green, Blue or four integer parameters (RGB + Alpha channel for opacity). After including the above scripts the chart is generated with the correct colours for the category values:

![Pie chart with colours dynamically reflecting category values](/uploads/2010/01/dynpal04.png)
