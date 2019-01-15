---
id: 17
title: 'Cliplink -- a utility for short, reliable links on Windows networks'
date: 2017-04-06T22:46:20+00:00
author: dave
layout: post
guid: https://www.davekurman.com/?p=17
permalink: /2017/04/cliplink-a-utility-for-short-reliable-links-on-windows-networks/
categories:
  - Solutions
---
### What is Cliplink for

* Users wanted a way to create reliable links to files and folders on Windows network drives.
* Spaces and special characters break Outlook's hyperlinks to network files. Clipboard-Link fixes that problem.

### [](https://github.com/p7th0n/clipboardlink#how-do-i-get-set-up)How do I get set up

* Get Cliplink from => **[GitHub](https://github.com/p7th0n/clipboardlink)**.
* There is no configuration
* There are no dependencies
* No database configuration
* Save the contents of this repo to a network drive or share.
* Tell users to run **setup** from there.

### [](https://github.com/p7th0n/clipboardlink#how-does-it-work)How does it work

* Locate the file or folder on the network.
* Right-click and select **Send To** > **clipboard-link**
* Cliplink creates a safe link to the file and puts it on the Clipboard.
* Paste the link into Email, documents, etc.

### [](https://github.com/p7th0n/clipboardlink#to-make-a-friendly-link)To make a friendly link

* Create a link to a network file or folder with Clipboard-link and paste into a message
* Select the link part and Cut
* Select the name part between the brackets
* Select Insert menu > Hyperlink
* Paste the link in the URL box
* Click Ok
* Clipboard-link copies the file/folder name and shortened link to the clipboard

                 [Engineering Documentation]                  file://F:\ENGINE~1

                          ^ Name ^                               ^   link  ^

NOTE: **Cliplink will not create links for executables [files ending with EXE, COM, BAT, etc.].

### [](https://github.com/p7th0n/clipboardlink#who-am-i)Who am I

* Developed by <dkurman@netsnbytes.com> with lots of help and feedback. I had jobs as I.T. Manager, sysadmin, helpdesk, and programmer for several companies.
* [@davekurman on Twitter](https://twitter.com/davekurman)
* [LinkedIn](https://www.linkedin.com/in/davekurman?trk=profile-badge-cta)