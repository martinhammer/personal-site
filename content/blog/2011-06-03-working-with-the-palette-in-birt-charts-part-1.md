+++
title = "Working with the Palette in BIRT charts, Part 1"
date = 2011-06-03T14:31:45Z

[taxonomies]
tags = ["birt", "Business Intelligence", "charts"]
+++

![Format Chart tab of the Edit Chart wizard](/uploads/2011/06/Screenshot-New-Chart-.png)On this blog we have often talked about overriding the default behaviour of the BIRT chart palette by dynamically setting colours based on data values. However, it is perhaps worth looking in more detail at the palette itself to understand the default behaviour and appreciate how it can be tweaked.

Each chart has a palette. The palette determines the colours used for drawing the series in the chart. From the UI perspective, the palette options are accessed on the last tab of the Edit Chart dialog (Format Chart), the first selection in the tree on left-hand-side (Series). It is worth noting that a chart only has one palette, even if the chart contains multiple series.

![BIRT chart series palette](/uploads/2011/06/Screenshot-Series-Palette-.png)By default there are 32 entries in the palette. They are used in the chart from top to bottom, i.e. in the default scenario the first category will be coloured blue, the next one red and so on. The Add and Remove buttons in the Series Palette dialog can be used to change the number of entries. What happens when the chart contains more categories than the list of palette entries? The answer is that the palette will wrap around, i.e. the 33rd category will be coloured in the same way as the first one. If the number of categories is known in advance, one can extend the palette using the Add button to create the necessary number of palette entries. (Naturally, one should question the design of such a chart, will the user really be able to extract any meaning from a chart with 32 or more different colours? In most cases, probably not.)

Each palette entry itself can be edited. Not only is it possible to set one of the predefined colours, on![BIRT chart palette editing a palette entry](/uploads/2011/06/Screenshot-Palette-Options.png)e can also set a custom colour, a linear gradient based on two colours or even an image file. It is also possible to specify different colour for positive and negative values.

As we already mentioned, the palette colours are applied top to bottom without any further logic, in particular they are not tied to the actual data point values themselves. Several common scenarios and scripting approaches for solving the issue have already been discussed on this blog: [Setting BIRT chart series palette dynamically](@/blog/2010-01-13-setting-birt-chart-series-palette-dynamically.md "Setting BIRT chart series palette dynamically"), [Setting BIRT chart series palette dynamically, part 2 – area charts](@/blog/2010-02-18-setting-birt-chart-series-palette-dynamically-part-2-area-charts.md "Setting BIRT chart series palette dynamically, part 2 – area charts"), [Setting BIRT chart series palette dynamically, part 3 – stacked bar charts](@/blog/2010-09-09-setting-birt-chart-series-palette-dynamically-part-3.md "Setting BIRT chart series palette dynamically, part 3 – stacked bar charts").

In the second part of this article we will look at how the palette and related objects can be manipulated programmatically, i.e. through scripting.
