---
id: 88
title: Microsoft Windows File Server Locked File Watcher
date: 2017-05-29T20:43:06+00:00
author: dave
layout: post
guid: https://www.davekurman.com/?p=88
permalink: /2017/05/microsoft-windows-file-server-locked-file-watcher/
robotsmeta:
  - index,follow
categories:
  - Uncategorized
---
* It is common for companies to work with Excel, Word and other files on Windows network shared folders.
* More than one user cannot usually work on files like Excel at the same time.
* When trying to open a locked network file it can be hard to see who has it locked.
* The best method to see who has a file locked is from the Windows file server. But that requires Administrator level access. That level of access is not practical for all users for security reasons.
* This tool has two parts:
* A Powershell process that watches for locked files and saves the result.
* A web server that displays the locked files and who has them locked.
* No special access is required to view the web results.The Powershell process uses
* The Powershell process uses a list of _watched_ files and folders. This limits the number of files displayed. This also allows it to avoid showing sensitive files or network folders.

Visit [Github](https://github.com/p7th0n/check_for_locked_files) to download.