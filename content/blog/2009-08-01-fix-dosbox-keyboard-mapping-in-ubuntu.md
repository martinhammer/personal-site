+++
title = "Fix DOSBox keyboard mapping in Ubuntu"
date = 2009-08-01T04:59:39Z

[taxonomies]
tags = ["games", "Linux"]
+++

If your keyboard doesn't seem to be working correctly in DOSBox running on Ubuntu (for example, if arrow and page up keys don't work), try the following:

- Check if a file called .dosboxrc exists in your home directory, e.g. by running

  ```bash
  more ~/.dosboxrc
  ```
- Create or edit this file by running

  ```bash
  gedit ~/.dosboxrc
  ```
- Add the following text to the file and save:

  ```ini
  [sdl]
  usescancodes=false
  ```
