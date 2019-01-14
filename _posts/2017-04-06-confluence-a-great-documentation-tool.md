---
id: 15
title: Confluence, a Great Documentation Tool
date: 2017-04-06T22:42:45+00:00
author: dave
layout: post
guid: https://www.davekurman.com/?p=15
permalink: /2017/04/confluence-a-great-documentation-tool/
categories:
  - Analysis
---
<div class="prose">
  <h2>
    Introduction
  </h2>
  
  <p>
    Years ago, I was the new system administrator at the company. I had to get a handle on the multitude of systems, servers, and software. My predecessors did a great job of documenting the details in <a href="http://products.office.com/en-us/word" rel="nofollow noopener">Microsoft Word</a>. Because of the number of documents, it was hard to find stuff. It was time-consuming to keep details up to date as software and systems changed.
  </p>
  
  <p>
    Then I discovered <a href="http://www.mediawiki.org/wiki/MediaWiki" rel="nofollow noopener">MediaWiki</a>, the Open Source software that runs <a href="http://www.wikipedia.org/" rel="nofollow noopener">Wikipedia</a>. An old donated PC was the host for Linux and MediaWiki. I copied the Word documents into the wiki. It was easy and natural (for me at least) to build easy to navigate links to the IT documentation. MediaWiki keeps older versions so it is easy to see the history of changes. Wiki markup is weird and unnatural to normal people but a few folks at the company took to it. The help was welcome for maintaining the IT processes and procedures. Contributors logged in to MediaWiki so we could see who made changes.
  </p>
  
  <p>
    Unlike the Word documents, it was easy to search and find information. We could email hyperlinks to folks in need of support. That saved time for me and other power users. And normal folks would sometimes let us know when documentation was out of date or wrong. MediaWiki reduced the friction of sharing and managing the documentation.
  </p>
  
  <p>
    I looked at <a href="http://products.office.com/en-us/sharepoint/collaboration" rel="nofollow noopener">SharePoint </a>a few times. SharePoint is well integrated with Windows and Microsoft Office products. It seems like a natural extension for folks familiar with that world. SharePoint&#8217;s wiki didn&#8217;t work for me though. And the easy extensibility worked against using it for documentation. That lead to a lot of rabbit holes to get lost in when the focus should be elsewhere. Don&#8217;t get me wrong, I am very good in the Microsoft world but it felt like more friction to get things done.
  </p>
  
  <h2>
    Atlassian Confluence
  </h2>
  
  <p>
    I came across <a href="http://www.atlassian.com/software/confluence" rel="nofollow noopener">Atlassian Confluence</a> while exploring <a href="http://agilemethodology.org/" rel="nofollow noopener">Agile development methods</a>. Confluence is like a polished MediaWiki.
  </p>
  
  <p>
    Working together on documentation is well thought out. Instead of emailing the author about changes a user selects text on the Confluence page. A popup presents the user with the option to comment right on the page. Comments are part of the documentation. That is much better than email silos.
  </p>
  
  <p>
    The real-time collaboration is great. When more than one user edits a page at the same time the changes synchronize between them in real time.
  </p>
  
  <p>
    Like MediaWiki, Confluence keeps track of previous versions of the pages. Having that history gives users more confidence. They do not have to maintain many copies of a document. The history is all right there with that page in Confluence.
  </p>
  
  <p>
    Embedding and attaching pictures is easy in Confluence. Users can also attach Word, Excel, PDFs and other files.
  </p>
  
  <p>
    A cool plugin for Confluence is <a href="http://www.gliffy.com/products/confluence-plugin/" rel="nofollow noopener">Gliffy</a>. It is like a web based Visio for creating diagrams, flowcharts and so forth. Many times IT documentation is better with a network diagram or a business workflow. The Gliffy plugin tracks versions as well. Users have that history of changes which helps with complex diagrams.
  </p>
  
  <p>
    Confluence benefits from tight integration with <a href="http://www.atlassian.com/software/jira" rel="nofollow noopener">Atlassian JIRA</a>. That is good if you use JIRA. JIRA is an issue tracking tool that is great for software development. Many use JIRA for business project management and managing service.
  </p>
  
  <p>
    Confluence and JIRA are both available as cloud services from Atlassian. No servers to maintain.
  </p>
  
  <p>
    Having time on my hands I went with installing Confluence and JIRA on my servers. Well, actually Hyper-V virtual machines running Linux. The install process is well documented. I ran into a few problems but Atlassian had intuitive help to get through them. The price made me smile. My self-hosted servers were $10 each for 10 users. That&#8217;s a good value and a low barrier for these tools.
  </p>
  
  <p>
    Confluence helps my efficiency with the <a href="http://en.wikipedia.org/wiki/Don%27t_repeat_yourself" rel="nofollow noopener">DRY principle</a> (Don&#8217;t Repeat Yourself). Having the notes and documentation online means they&#8217;re available almost everywhere. And Confluence reduces the friction of maintaining documentation.
  </p>
</div>