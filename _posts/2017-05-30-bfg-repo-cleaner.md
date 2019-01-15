---
id: 90
title: BFG Repo-Cleaner
date: 2017-05-30T16:43:25+00:00
author: dave
layout: post
guid: https://www.davekurman.com/?p=90
permalink: /2017/05/bfg-repo-cleaner/
robotsmeta:
  - index,follow
categories:
  - Programming
---
## [BFG Repo-Cleaner](https://rtyley.github.io/bfg-repo-cleaner/) is a good tool to clean up a Git repository before sharing

Removes large or troublesome blobs like git-filter-branch does, but faster. And written in Scala.

```bash
bfg --strip-blobs-bigger-than 100M --replace-text banned.txt repo.git
```

Replace all passwords and listed in a file _(prefix lines 'regex:'; or 'glob:'; if required)_ with `***REMOVED***` wherever they occur in your repository :

```bash
bfg <strong>--replace-text passwords.txt</strong>  my-repo.git
```

Delete all files named 'id\_rsa' or id\_dsa' :

```bash
bfg --delete-files id_{dsa,rsa} my-repo.git
```

## Using BFG on Windows

* Use [Git Bash](https://superuser.com/questions/1053633/what-is-git-bash-for-windows-anyway) or [Windows 10 Bash](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide).
* Download and install Java from [here](https://www.java.com/en/download/manual.jsp).
* Download BFG [here](https://search.maven.org/remote_content?g=com.madgag&a=bfg&v=LATEST).
* Make an alias for BFG:

```bash
java -jar bfg.jar $*
```

* Make a replace.txt file:

```bash
PASSWORD        # Replaces PASSWORD with ***REMOVED***
PASSWORD==>TEST # Replaces PASSWORD with TEST
PASSWORD==>     # Replaces PASSWORD with blank
                # You can use Regular Expressions also
```

* Run this command in the repo folder from Git Bash or Win10 Bash:

```bash
bfg --replace-text replace.txt
```

* When bfg is done run these commands

```bash
git reflog expire -expire=now -all && git gc -prune=now -- aggressive

git push                   # -f may be needed
```

## Notes

* I had already pushed the repo and shared it.  That got complicated by multiple branches.  My fault.  It would have been much simpler to run bfg before sharing.
* I fumbled a bit trying to get bfg running in Windows command shell.

## Resources

* [StackOverflow](https://stackoverflow.com/questions/tagged/bfg-repo-cleaner)
* [Removing Keys, Passwords and Other Sensitive Data from Old Github Commits on OSX](https://stackoverflow.com/questions/tagged/bfg-repo-cleaner)
* [BFG Repo-Cleaner &#8211; Removes large or troublesome blobs like git-filter-branch does, but faster. And written in Scala.](https://rtyley.github.io/bfg-repo-cleaner/)
* [Using BFG Repo Cleaner tool to remove sensitive files from your git repo](https://github.com/IBM/BluePic/wiki/Using-BFG-Repo-Cleaner-tool-to-remove-sensitive-files-from-your-git-repo)
* [The BFG Repo Cleaner](https://github.com/IBM/BluePic/wiki/Using-BFG-Repo-Cleaner-tool-to-remove-sensitive-files-from-your-git-repo)