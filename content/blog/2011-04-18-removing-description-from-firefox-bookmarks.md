+++
title = "Removing description from Firefox bookmarks"
date = 2011-04-18T12:59:14Z

[taxonomies]
tags = ["firefox", "sqlite", "Web"]
+++

![Description in a Firefox Bookmark](/uploads/2011/04/firefox_bookmark_description.png)

By default Firefox populates the Description field of a bookmark with the content of the page's `<meta name="Description" content="..." />` tag. I find is a little annoying and was looking for a way to remove these descriptions.

Since I have a lot of bookmarks I wanted to clean them all up in one go rather than editing them one by one. Luckily there is an easy way to do this since Firefox stores the bookmarks in an [SQLite](https://secure.wikimedia.org/wikipedia/en/wiki/Sqlite) database file which can be opened and manipulated.

1. Install SQLite Database Browser (Ubuntu: `sudo apt-get install sqlitebrowser` Windows: [download](http://sourceforge.net/projects/sqlitebrowser) and install from SourceForge).
2. **IMPORTANT!** Export your Firefox bookmarks to have a backup in case something goes wrong.
3. Close Firefox (you can't edit the bookmarks file while Firefox is running).
4. Run SQLite Database Browser and open the places.sqlite file which is located in your [profile folder](http://kb.mozillazine.org/Profile_folder).
5. Run the following SQL which will remove the description from **all bookmarks**.

   ```sql
   delete from moz_items_annos where anno_attribute_id = 2
   ```

6. Save and close, run Firefox.

Reference on the places.sqlite file can be found on [mozillaZine](http://kb.mozillazine.org/Places.sqlite) and [Mozilla Developer Network](https://developer.mozilla.org/en/The_Places_database).
