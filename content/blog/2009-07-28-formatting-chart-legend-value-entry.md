+++
title = "Formatting chart legend value entry"
date = 2009-07-28T17:11:57Z

[taxonomies]
tags = ["birt", "Business Intelligence", "charts"]
+++

In the legend properties for BIRT meter charts (accessed via Format Chart > Chart Area > Legend) there is a Show Value checkbox which controls displaying the series value together with its name. For some reason, in the Entries the dialog the Format control appears to be disabled, and so there is no way to control the format of the value. This is especially a problem when the computed value contains a lot of decimal places, as shown below:

![BIRT Meter Legend 01](/uploads/2009/07/BIRT-Meter-Legend-01.png)

My solution to get around this problem is to add a little bit of script to the chart. Simply paste the following code to the charts onRender event (select the chart, click the Script tab at the bottom of the main editor window, select onRender in the first dropdown and beforeDrawLegendItem in the second one):

```javascript
function beforeDrawLegendItem( lerh, bounds, icsc )
{
    var nVal = lerh.getValueLabel().getCaption().getValue();
    nVal = Math.round( nVal ) + "%";
    lerh.getValueLabel().getCaption().setValue( nVal );
}
```

The result is a nicely formatted percentage value:

![BIRT Meter Legend 02](/uploads/2009/07/BIRT-Meter-Legend-02.png)
