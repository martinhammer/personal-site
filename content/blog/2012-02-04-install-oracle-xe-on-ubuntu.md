+++
title = "Install Oracle XE on Ubuntu"
date = 2012-02-04T11:21:13Z

[taxonomies]
tags = ["Database", "Linux", "oracle", "ubuntu"]
+++

Steps to install Oracle Express Edition (XE) database 10g on Ubuntu 11.10 (Oneiric).

1. [Download](http://www.oracle.com/technetwork/database/express-edition/downloads/102xelinsoft-102048.html) the Oracle XE deb package (free registration is required).

2. Double click the downloaded file and select to install it.

3. In terminal run `sudo /etc/init.d/oracle-xe configure`.

4. You will be prompted to enter the following parameters: HTTP port number, database listener port number, SYSTEM and SYS database accounts password and whether the service should be started upon boot.

5. Thereafter the configuration might take a few minutes. That's it. To start the service in the future run `sudo /etc/init.d/oracle-xe start` and to stop `sudo /etc/init.d/oracle-xe stop`.
