+++
title = "BADSIG error in Ubuntu Update Manager"
date = 2009-05-14T15:56:29Z

[taxonomies]
tags = ["administration", "Linux", "ubuntu"]
+++

Here are a few things you can try if you get the BADSIG error in Update Manager:

- Run the following commands from terminal shell:

  ```bash
  sudo apt-get clean
  sudo apt-get update -o Acquire::http::No-Cache=True
  ```
- Change the Ubuntu server from which updates are downloaded: System > Software Sources > Ubuntu Software tab > change the selected server in the "Download from" dropdown.
