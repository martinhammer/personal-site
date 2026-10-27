+++
title = "Keeping track of scripts in BIRT reports"
date = 2010-08-03T14:21:38Z

[taxonomies]
tags = ["birt", "Business Intelligence"]
+++

![Outline fast view with Sripts item expanded](/uploads/2010/08/BIRT_Eclipse_Scripts.png)The ability to add custom scripts to report elements is a very powerful feature of BIRT. It allows the report developer to modify or override the default behaviour of the element; this blog features [many examples](/tags/birt/) of when this might be useful. However, as the number of scripts in a report increases, the report becomes harder and harder to maintain.

The Layout view or the Property Editor window do not indicate whether and what scripts exist on a particular element, and so it would seem the only way to check is to select the element and switch to the Script tab and look through the methods. Of course this would be incredibly tedious and impractical in a complex report.

Luckily, the Outline fast view has a Scripts item tucked away at the bottom of the list. When expanded, this shows all items in the report which contain custom scripts (expanding the item shows the overridden methods). Right-click brings up an option to go to the report element in the report Layout, and thus actually figure out which item it is referring to.

The deeper lesson is that one should use scripts only when necessary and if there is no other way to implement the required functionality. And of course thorough documentation also helps with maintenance...
