+++
title = "Greasemonkey script to get book ISBN number using GM_xmlhttpRequest"
date = 2009-04-17T19:21:52Z

[taxonomies]
tags = ["Books", "greasemonkey", "javascript", "Web"]
+++

A bit of background: for a while now I have been buying books from the [SF Masterworks](http://www.orionbooks.co.uk/Masterworks-SF-list.aspx) series from Orion Publishing, mainly when I am in a bookshop and I see a book from the series which I don't yet have. So far I have bought sixteen of the books, and I though it would be nice to have the whole series (perhaps they will be considered collectable one day, who knows). Having spoken to my local bookshop, it turn out they would happy to order the rest of the series for me if I supply them with the books' ISBN numbers.

Now, the [SF Masterworks](http://www.orionbooks.co.uk/Masterworks-SF-list.aspx) series page has a nice table with the books titles and authors as well as links to a more detailed page for each book. The table on the page can be nicely copied and pasted into a spreadsheet ([Google Docs](http://docs.google.com) in my case) but the problem is that the ISBN numbers are not displayed on this over page, but on each book's detailed page. Rather then having to click and copy & paste 70 times, I thought this would be a good opportunity to play with the [GM\_xmlhttpRequest](http://diveintogreasemonkey.org/api/gm_xmlhttprequest.html) functionality in [Greasemonkey](http://www.greasespot.net/).

The script is [uploaded](http://userscripts.org/scripts/show/46923) on [userscripts.org](http://userscripts.org/) (together with a [few of my other scripts](http://userscripts.org/users/41964/scripts)), although being targetted for a one-off job I don't think it will become a hit!

So, what are the learnings from this little exercice?

At a high level, the logic being the script is something along the lines:

1. Loop through the table
2. On each row get the link to the detailed page
3. Get the page via GM\_xmlhttpRequest
4. Process the page to get the ISBN number
5. Display the ISBN number on the master page

Naively, I fell into the trap of calling GM\_xmlhttpRequest from a for loop. This doesn't work because GM\_xmlhttpRequest works in an asynchronous fashion, meaning that the rest of the code will not wait for it to finish.

I then read up quite a bit on the related topic of closures and scope in JavaScript and ultimately decided that whilst it's a very interesting topic, for getting things done I needed an quicker and (for me ) an easier solution.

The way I decided to go was good old recursion ("you can't understand recursion unless you understand recursion"). So an array of links to the detailed pages is built up first, then we iterate over them - but rather than having GM\_xmlhttpRequest in the loop itself, I let its callback function increment the loop counter and call the next iteration. The counter and the array of links are global variables, to get around this tricky problem with closures.

As far as processing the results of GM\_xmlhttpRequest, it is a bit of a letdown that they come as a text and it is not possible to use DOM (it can be done for XML with [DOMParser](http://diveintogreasemonkey.org/patterns/parse-xml.html) but there is nothing in Greasemonkey for parsing HTML text). So to retrieve the value of the ISBN number from the detailed page it is back to plain old string search.

It's probably not the cleanest solution out there, but given that the objective was to save some time and effort with manual copy & paste for a one-off job, it works great. Following the [KISS principle](http://en.wikipedia.org/wiki/KISS_principle), I try not over-engineer something which is ultimately throwaway. At the same time, I got to play with GM\_xmlhttpRequest for the first time, so the learning bonus is still there.

Now it's off to the shop to get those books ordered - happy reading!
