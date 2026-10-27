+++
title = "Alternate row styling for summary rows"
date = 2010-08-02T13:14:37Z

[taxonomies]
tags = ["birt", "Business Intelligence"]
+++

The [technique for alternate row styling](@/blog/2009-04-22-alternate-row-styling-in-birt.md) described in a previous post is applicable for tables with detail rows (a detail row in a table corresponds to a row in the bound data set). However, it is often the case that the table does not contain any detail rows at all and instead displays only aggregated data, i.e. header or footer rows of a group.

In such scenario the `row.__rownum` value cannot be used, because `__rownum` is incremented for each row in the data set, meaning its value will depend on how many rows are being aggregated into the summary row.

Instead, the highlight logic can be defined using a variable incremented on each summary row.

1. First, initialize the variable. This can be done e.g. in the `onCreate` method of a label in the static column header.

   ```javascript
   reportContext.setPersistentGlobalVariable( "aggRowNum", "0" );
   ```

2. In an object on the summary row (either a label, aggreation or the row itself) the following code is placed in the `onCreate` method to increment the value of the variable (the funny stuff is to force explicit conversion between string and number and back):

   ```javascript
   var n = reportContext.getPersistentGlobalVariable( "aggRowNum" );
   n = (n*1) + 1;
   reportContext.setPersistentGlobalVariable( "aggRowNum", "" + n );
   ```

3. Finally, the highlight property of the row is set as follows:

   ```
   reportContext.getPersistentGlobalVariable( "aggRowNum" ) % 2; | equal to | 1
   ```
