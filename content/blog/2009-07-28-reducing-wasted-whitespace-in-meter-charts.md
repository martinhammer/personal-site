+++
title = "Reducing wasted whitespace in meter charts"
date = 2009-07-28T15:50:09Z

[taxonomies]
tags = ["birt", "Business Intelligence", "charts"]
+++

BIRT has a wonderful meter chart type which is very useful for building KPI-based performance dashboards. However, it can be a little tricky to get the visual layout of the chart right. With default settings most of the chart is empty blank space with a relatively small dial in the middle. This is because the meter (dial) appears to be taking only a small portion of the overall area and also the distances between the chart title, legend and the dial are too big. This can look disjointed in a dashboard-style report. See the screenshot below, which shows a meter chart with a legend below and otherwise default settings. The background colour is set to blue to highlight the amount of empty space wasted:

![BIRT Meter 01 - Before](/uploads/2009/07/BIRT-Meter-01-Before.png)

The trick to make the dial take up a larger portion of the overall chart area is to set a couple of "inset" entries to negative values. The values below worked well for me for a chart with width of 4.5 in and height 3 in.

- To move the legend closer to the meter, go to Format Chart > Chart Area > Legend > Layout and set Insets (points) > Top to -20. This assumes that the legend Position is set to Below.
- To move the dial closer to the title, go to Format Chart > Chart Area > Plot > Area Format and set Insets (points) > Top to -30.

The screenshot below shows the same chart with the above two changes:
![BIRT Meter 02 - After](/uploads/2009/07/BIRT-Meter-02-After.png)

The exact values may need some trial and error playing around to get the layout exactly right, but the general principle is: don't be afraid of setting negative inset values.
