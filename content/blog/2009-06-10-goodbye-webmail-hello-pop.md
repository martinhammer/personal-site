+++
title = "Goodbye WebMail, hello POP"
date = 2009-06-10T15:52:21Z

[taxonomies]
tags = ["hotmail", "thunderbird", "Web"]
+++

For a long time the only way to access and use a [Hotmail](http://www.hotmail.com) account from Thunderbird was the [WebMail](http://webmail.mozdev.org/) extension. All in all, this is a great solution but it always seemed a bit of a workaround since in the background it "pretends" to be a browser, downloads the Hotmail HTML and parses it to get and send emails.

This has recently changed since the Hotmail team has come to its senses and now once again [allows POP3 and SMTP access](http://help.live.com/Help.aspx?market=en-US&project=MailClassic&querytype=topic&query=WL_Mail_PROC_OEDAV.htm) to the service. This means it is now straightforward to configure Thunderbird to use Hotmail, and no extensions are required.

As summarized by poster vtel57 on [Google Groups](http://groups.google.com/group/thunderbird-webmail-extension/browse_thread/thread/abb1f38709ea8e09):

> incoming server: pop3.live.com - port 995 - SSL
> outgoing server: smtp.live.com - port 587 - TLS
> Be sure that Secure Password Authentication is NOT checked.
> Works like a champ! :)

Indeed it does, and we will even forgive vtel57 [the use of a smiley](http://tafkac.org/afu/smileys/smileys_the_new_republic.html).

One more thing to note is that once configured to use POP, Thunderbird will download the entire contents of your Hotmail inbox. So it is a good idea to do a bit of a clean up by deleting old items or moving them to an archive folder.
