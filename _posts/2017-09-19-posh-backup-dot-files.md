---
layout: post
title:  "Posh Backup Dot Files"
---

This is a PowerShell script to backup dot files and directories on Windows.

**WARNING** dot files can contain sensitive information. Do not clone to a public repo!

## Usage

* Clone this repo.
* Edit the backup_list.txt file.  Add your dot files.
* Run **posh_backup_dot_files.ps1**

## Details

* The script copies dot files and directories to the ./backup subdirectory.
* It checks for changes and uses git to add and commit the changes.
* **If your dot files contain sensitive information do not clone to a public repository.**

> Feedback and suggestions are welcome.