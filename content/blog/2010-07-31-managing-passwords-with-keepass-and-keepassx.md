+++
title = "Managing Passwords with KeePass and KeePassX"
date = 2010-07-31T04:07:33Z

[taxonomies]
tags = ["Linux", "security", "Web", "Windows"]
+++

Password proliferation is a serious problem on the web today. Most websites require users to register and create a username/password combination for future authentication. Unfortunately not many websites support reusable logins such as [OpenID](http://openid.net/).

The main problem is that of human memory. It is of course not reasonable to expect the user to remember 100+ unique passwords. In most cases, the end result is that users will reuse the same password for multiple sites and systems. The issues with this are obvious: if a malicious third party gets hold of one password, it compromises all where the password was used; also, by piecing together the other bits of data entered at registration (such as date of birth, gender, physical address, mother's maiden name etc.) for different sites, the attacker might be able to create a very accurate profile which could then be used to gain access to even those systems where a different password was used.

That's why I use a password management program, in particular [KeePass](http://keepass.info/)/[KeePassX](http://www.keepassx.org/). It allows one to securely store credentials and is itself protected by strong encryption and can only be accessed using a password. In reality one finds that on a daily basis it is sufficient to remember 5-10 most frequently used passwords (computer login, email, Google, social network, internet banking and of course the password manager itself) and the rest can be referred to from KeePass. The program has a feature to generate random passwords, which is ideal to have strong passwords for infrequently accessed systems where one might not even realise the account was hacked for a long period of time. KeePass can even be installed in portable mode, which means you can carry the program and your encrypted passwords file on a USB stick.

I found that [KeePass](http://keepass.info/) (version 1 for Windows) and [KeePassX](http://www.keepassx.org/) (Linux and Mac) suit my needs perfectly. There is also a version for Android and iPhone (refer to the [Wikipedia article](http://en.wikipedia.org/wiki/Keepass)). Best of all? It's [free software](http://en.wikipedia.org/wiki/Free_software) licensed under [GPL](http://keepass.info/help/v1/license.html).
