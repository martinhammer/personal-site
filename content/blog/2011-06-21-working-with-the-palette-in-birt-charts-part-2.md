+++
title = "Working with the Palette in BIRT charts, Part 2"
date = 2011-06-21T14:23:39
draft = true

[taxonomies]
tags = ["birt", "Business Intelligence", "charts"]
+++

In the [first part of this article](@/blog/2011-06-03-working-with-the-palette-in-birt-charts-part-1.md "Working with the Palette in BIRT charts, Part 1"), we discussed how the series palette is configured through the BIRT Designer application. Now let us step away from the UI perspective and take a brief look at the underlying Java classes. This is the foundation of being able to override the default behaviour through scripting.

First of all, the palette we see through the UI is a representation of interface [org.eclipse.birt.chart.model.attribute.Palette](http://www.birt-exchange.com/be/documentation/BIRT_231/ChartJavadoc/chart/api/org/eclipse/birt/chart/model/attribute/Palette.html) implemented by class [org.eclipse.birt.chart.model.attribute.impl.PaletteImpl](http://www.birt-exchange.com/be/documentation/BIRT_231/ChartJavadoc/chart/api/org/eclipse/birt/chart/model/attribute/impl/PaletteImpl.html). To get hold of a palette object, we can call method [getSeriesPalette()](http://www.birt-exchange.com/be/documentation/BIRT_231/ChartJavadoc/chart/api/org/eclipse/birt/chart/model/data/SeriesDefinition.html#getSeriesPalette%28%29) on interface [org.eclipse.birt.chart.model.data.SeriesDefinition](http://www.birt-exchange.com/be/documentation/BIRT_231/ChartJavadoc/chart/api/org/eclipse/birt/chart/model/data/SeriesDefinition.html). The best way to get the SeriesDefinition itself is on the chart method beforeDrawSeries which provides [ISeriesRenderer](http://www.birt-exchange.com/be/documentation/BIRT_231/ChartJavadoc/chart/api/org/eclipse/birt/chart/render/ISeriesRenderer.html) as parameter isr which we can access as follows. Note that we need to ensure that the series is the correct one (as beforeDrawSeries is also called to draw the chart axis) so that isr is actually of class [org.eclipse.birt.chart.render.BaseRenderer](http://www.birt-exchange.com/be/documentation/BIRT_231/ChartJavadoc/chart/api/org/eclipse/birt/chart/render/BaseRenderer.html) which will ultimately allow us to access the palette.
