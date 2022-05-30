---
layout: post
title:  "SendPlot Flask"
---

# Project name SendPlot - CAD file plotting and viewing system

Jan 2015 – Apr 2015

Printing and plotting CAD/Engineering drawings is difficult for non-engineering users. There are too many options and often leads to the interupting an engineer for help. SendPlot was a custom app that allowed the end user to find a drawing and print. The engineer who creates the drawing sets the options for printed output. The SendPlot process saved considerable time for purchasing and production.

The original SendPlot depended on unsupported server software and AutoCAD plugin. When the company upgraded from AutoCAD 2000 the original SendPlot no longer worked. There were no commercial products to replace the SendPlot process.

I developed several programs from scratch to replace the SendPlot process.

## Web Server

I used Python/Flask for the web server. CLI (command line interface) scripts already performed indexing and searches.  Flask is lean.  Flask actions mapped to the existing logic. The web GUI provided quick feedback from users. We iterated through features they needed and wanted.

The web server provides search services for the CAD/engineering files. Each of the original SendPlot clients searched through folders on network shares for each search. The web server searches are faster and more efficient.  Each search is a lookup in a cached in-memory database so the results are immediate.

The web server supports quick delivery of new SendPlot features and bug fixes. The original SendPlot desktop clients required visits to each computer to deliver new features and updates.

## Web Client

I developed the web client with CoffeeScript.

The web client supports printing to network printers. It supports downloading PDF drawings for viewing on any PC, laptop, tablet or smartphone. The web client also supports access to less common CAD formats.

## CAD File spiders

I developed the file indexing spiders in Python.

The spiders run every sixty seconds. This allows near real time results for searches.

Print Server:

I developed the print server in Python.

## PDF Generator

I developed the PDF Generator in SolidWorks eDrawings using VBA.

A Watcher program runs on the server. The Watcher monitors network folder locations. The PDF Generator processes New or updated CAD drawing files. The PDF Generator creates a new PDF file and archives older versions.

The company's libraries of all DWG and SLDDRW files ran through the PDF Generator. The PDF Generator
processed over fifty thousand files.