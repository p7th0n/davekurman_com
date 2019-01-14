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
## [BFG Repo-Cleaner](https://rtyley.github.io/bfg-repo-cleaner/) is a good tool to clean up a Git repository before sharing.

> Removes large or troublesome blobs like git-filter-branch does, but faster. And written in Scala.
> 
>     $ bfg --strip-blobs-bigger-than 100M --replace-text banned.txt repo.git
>     
> 
> Replace all passwords and listed in a file _(prefix lines &#8216;regex:&#8217; or &#8216;glob:&#8217; if required)_ with `***REMOVED***` wherever they occur in your repository :
> 
>     
> 
>     $ bfg <strong>--replace-text passwords.txt</strong>  my-repo.git
>     
> 
> Delete all files named &#8216;id\_rsa&#8217; or &#8216;id\_dsa&#8217; :
> 
>     
> 
>     $ bfg <strong>--delete-files id_{dsa,rsa}</strong>  my-repo.git
>     
>     

## ``Using BFG on Windows:

  * Use [Git Bash](https://superuser.com/questions/1053633/what-is-git-bash-for-windows-anyway) or [Windows 10 Bash](https://msdn.microsoft.com/en-us/commandline/wsl/install_guide).
  * Download and install Java from [here](https://www.java.com/en/download/manual.jsp).
  * Download BFG [here](https://search.maven.org/remote_content?g=com.madgag&a=bfg&v=LATEST).
  * Make an alias for BFG:

<p style="padding-left: 60px;">
  <span style="color: #008000;"><strong>java -jar bfg.jar $*</strong></span>
</p>

  * Make a replace.txt file:

<pre style="padding-left: 60px;"><span style="color: #008000;"><strong>PASSWORD        <span style="color: #0000ff;"># Replaces PASSWORD with ***REMOVED***</span></strong></span>
<span style="color: #008000;"><strong>PASSWORD==&gt;TEST <span style="color: #0000ff;"># Replaces PASSWORD with TEST</span></strong></span>
<span style="color: #008000;"><strong>PASSWORD==&gt;     <span style="color: #0000ff;"># Replaces PASSWORD with blank</span></strong></span>
<span style="color: #0000ff;"><strong>                # You can use Regular Expressions also</strong></span></pre>

  * Run this command in the repo folder from Git Bash or Win10 Bash:

<p style="padding-left: 60px;">
  <span style="color: #008000;"><strong>bfg &#8211;replace-text replace.txt</strong></span>
</p>

  * When bfg is done run these commands

<p style="padding-left: 60px;">
  <span style="color: #008000;"><strong>git reflog expire &#8211;expire=now &#8211;all && git gc &#8211;prune=now &#8212; aggressive</strong></span>
</p>

<p style="padding-left: 60px;">
  <span style="color: #008000;"><strong>git push                   <span style="color: #0000ff;"># -f may be needed</span><br /> </strong></span>
</p>

## Notes:

  * I had already pushed the repo and shared it.  That got complicated by multiple branches.  My fault.  It would have been much simpler to run bfg before sharing.
  * I fumbled a bit trying to get bfg running in Windows command shell.

## Resources:

  * [StackOverflow](https://stackoverflow.com/questions/tagged/bfg-repo-cleaner)
  * [Removing Keys, Passwords and Other Sensitive Data from Old Github Commits on OSX](https://stackoverflow.com/questions/tagged/bfg-repo-cleaner)
  * [BFG Repo-Cleaner &#8211; Removes large or troublesome blobs like git-filter-branch does, but faster. And written in Scala.](https://rtyley.github.io/bfg-repo-cleaner/)
  * [Using BFG Repo Cleaner tool to remove sensitive files from your git repo](https://github.com/IBM/BluePic/wiki/Using-BFG-Repo-Cleaner-tool-to-remove-sensitive-files-from-your-git-repo)
  * [The BFG Repo Cleaner](https://github.com/IBM/BluePic/wiki/Using-BFG-Repo-Cleaner-tool-to-remove-sensitive-files-from-your-git-repo)