---
id: 109
title: "getTP -- Get Source Code TODO's for a TaskPaper formatted file"
date: 2017-06-25T17:28:33+00:00
author: dave
layout: post
guid: https://www.davekurman.com/?p=109
permalink: /2017/06/gettp-get-source-code-todos-for-a-taskpaper-formatted-file/
robotsmeta:
  - index,follow
categories:
  - Uncategorized
---
This is a quick and simple Python script that uses [Ag &#8211; The Silver Searcher](https://github.com/ggreer/the_silver_searcher) to find &#8216;TODO&#8217; items in a source tree.

The output is formatted for the [TaskPaper](https://www.taskpaper.com/) plain text format and sent to stdout. The output can be piped to a .taskpaper file.

Nothing fancy. Ag is super fast and does the heavy lifting. The Python code formats the Ag format to TaskPaper.

  * The current directory name is used for the root project name.
  * Each file with TODO&#8217;s are sub-projects. The sub-project names include relative directories.
  * Tasks begin with the line number of the TODO.

<div class="highlight highlight-source-gfm">
  <pre>gettp:

        getTP.py:
                <span class="pl-v">-</span> line: 2    Combine TODO's to a TaskPaper list
                <span class="pl-v">-</span> line: 8    todo_command = 'ag TODO'
                <span class="pl-v">-</span> line: 13   Use Ag Silver Searcher to find TODO comments in source

        README.md:
                <span class="pl-v">-</span> line: 1    # getTP - Get Source Code TODO's for a TaskPaper formatted file
                <span class="pl-v">-</span> line: 3    This is a quick and simple Python script that uses [Ag - The Silver Searcher]...

        sample<span class="pl-cce">\t</span>est.md:
                <span class="pl-v">-</span> line: 5    * TODO: Ad nulla ad Lorem quis et quis in in laborum incididunt adipisicing occaecat id voluptate.
</pre>
</div>

&nbsp;

**[ Project on GitHub](https://github.com/p7th0n/getTP)[<img class="alignnone" src="https://www.davekurman.com/wp-content/uploads/2017/06/github-mark-300x158.png" alt="" width="65" height="34" />](https://github.com/p7th0n/getTP)**

&nbsp;