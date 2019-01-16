---
id: 119
title: Check for locked files
date: 2017-07-12T20:36:24+00:00
author: dave
layout: post
guid: https://www.davekurman.com/?p=119
permalink: /2017/07/who-has-that-damn-excel-file-locked/
robotsmeta:
  - index,follow
categories:
  - Solutions
---
Companies work from Excel, Word and other files on network shared folders. More than one user cannot usually work on these files at the same time. Time is lost tracking down who has the file locked.

It can be hard to see who has a file locked. Sometimes Excel or Word shows who. But not always. Other files like shared PDF's and CAD file types do not help much.

One way to see who locked a file is from the Windows file server as Administrator. Not practical for security reasons.

This tool has two parts:

* A watcher that checks for locked files. The watcher uses a search list for _watched_ files and folders.
* A web server that displays the locked files and who locked them. No need for special access. Just check a web page.

## Quick setup

* Clone or download and extract this [Github repo](https://github.com/p7th0n/check_for_locked_files) to a folder on the file server.
* Make sure [NodeJS](https://nodejs.org/en/) and npm are installed and on the PATH. Open a command line to the repo location and run **npm install** to initialize.
* From the same command line start the web server &#8211; **npm start**. By default it runs on port 80 so if that is a problem edit _package.json_ _scripts/start_. Visit [http://fileserver-name](http://fileserver-name/).
* In a separate command line start File lock watcher **npm run watch** [requires _**Administrator**_ privledges]

![screenshot](https://github.com/p7th0n/check_for_locked_files/raw/master/wwwroot/assets/img/check-lock-files-screenshot.png)

[![octocat](https://github.com/favicon.ico)](https://github.com/p7th0n/check_for_locked_files)