+++
title = "Installing Apache Tomcat on Ubuntu server"
date = 2009-06-23T16:33:49Z

[taxonomies]
tags = ["Linux", "tomcat", "Web"]
+++

Here's how to install [Apache Tomcat](http://tomcat.apache.org/) version 5.5 on an Ubuntu machine (note that there is nothing Ubutu specific in these steps). This will form one of the foundation steps for a series of posts in which we will build a fully open-source business intelligence platform.

1. First, install Java JDK. I am using Sun's version mainly for stability and to avoid any compatibility issues.

   ```bash
   sudo apt-get install sun-java6-jdk
   ```
2. Download Apache Tomcat and check for integrity.

   ```bash
   wget http://mirrors.sirium.net/pub/apache/tomcat/tomcat-5/v5.5.27/bin/apache-tomcat-5.5.27.tar.gz
   wget http://mirrors.sirium.net/pub/apache/tomcat/tomcat-5/v5.5.27/bin/apache-tomcat-5.5.27.tar.gz.md5
   md5sum -c apache-tomcat-5.5.27.tar.gz.md5
   ```
3. Unpack the archive file.

   ```bash
   tar xvzf apache-tomcat-5.5.27.tar.gz
   ```
4. Move the unpacked directory to its permanent location. I use /opt but this is only a personal preference.

   ```bash
   sudo mv apache-tomcat-5.5.27 /opt
   ```
5. Create a simple startup and shutdown script. Run `sudo vi /etc/init.d/tomcat` and save it with the following content:

   ```bash
   #!/bin/bash
   # Tomcat startup script

   export JAVA_HOME=/usr/lib/jvm/java-6-sun

   case $1 in
   start)
   	sh /opt/apache-tomcat-5.5.27/bin/startup.sh
   ;;
   stop)
   	sh /opt/apache-tomcat-5.5.27/bin/shutdown.sh
   ;;
   restart)
   	sh /opt/apache-tomcat-5.5.27/bin/shutdown.sh
   	sh /opt/apache-tomcat-5.5.27/bin/startup.sh
   ;;
   *)
   	echo "Usage: /etc/init.d/tomcat {start|stop|restart}"
   	exit 1
   ;;
   esac
   exit 0
   ```
6. Don't forget to make this script executable.

   ```bash
   sudo chmod 755 /etc/init.d/tomcat
   ```
7. Now we can finally start Tomcat.

   ```bash
   /etc/init.d/tomcat start
   ```
8. Finally, check that everything worked correctly by opening the Tomcat default page (http://&lt;servername>:8080) in a web browser.
