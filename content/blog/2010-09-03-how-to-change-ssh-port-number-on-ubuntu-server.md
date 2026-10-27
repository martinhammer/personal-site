+++
title = "How to change SSH port number on Ubuntu server"
date = 2010-09-03T08:56:48Z

[taxonomies]
tags = ["administration", "commandline", "Linux", "security", "ssh", "ubuntu"]
+++

Changing the port number of SSH daemon is a quick way of reducing the number of SSH brute force attacks your server might face (check the file `/var/log/auth.log` to see if there are many failed SSH login attempts).

1. Just to be on the safe side, create a backup copy of the SSH daemon config file.

   ```bash
   sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.vanilla
   ```
2. Edit the config file.

   ```bash
   sudo vi /etc/ssh/sshd_config
   ```
3. Change the port number on the following line, e.g. to 2201 or some other unused port. Make sure you note down the port number.

   ```ssh-config
   Port 22
   ```
4. Restart the SSH daemon. You might get kicked out of your existing session.

   ```bash
   sudo /etc/init.d/ssh restart
   ```
5. When you login next remember to include the correct port.

   ```bash
   ssh youruser@yourserver -p 2201
   ```
