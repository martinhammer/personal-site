+++
title = "Alternate row styling in BIRT"
date = 2009-04-22T12:57:56Z

[taxonomies]
tags = ["birt", "Business Intelligence"]
+++

**Update:** The technique documented in this post is applicable for alternating styles of detail rows. For a way of achieving the effect in a table consisting of summary rows only, please refer to [this later post](@/blog/2010-08-02-alternate-row-styling-for-summary-rows.md).

To set different styles for alternate table detail rows in BIRT:

1. Select the detail row - hover over the table, then click the table button which appears in the bottom left corner and finally click the row handle on the left hand side. The Property Editor window
2. In Property Editor go to the Highlights tab (last horizontal tab) and click Add. This will open the Highlight Rule dialog.
3. Enter the following condition (use 0 for styling the even rows or 1 for odd rows)

   ```
   row.__rownum % 2 | Equal to | 0
   ```
4. Now set the styling you want, for example different background colour, and finally click OK to close the dialog window.
