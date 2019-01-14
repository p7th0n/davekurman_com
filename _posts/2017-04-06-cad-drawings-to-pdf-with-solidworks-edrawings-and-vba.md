---
id: 12
title: CAD Drawings to PDF with SolidWorks, eDrawings and VBA
date: 2017-04-06T22:37:16+00:00
author: dave
layout: post
guid: https://www.davekurman.com/?p=12
permalink: /2017/04/cad-drawings-to-pdf-with-solidworks-edrawings-and-vba/
categories:
  - Solutions
---
<div class="" data-block="true" data-editor="7kljv" data-offset-key="317j8-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="317j8-0-0">
    <span data-offset-key="317j8-0-0">An automated solution to make Acrobat PDF files from CAD drawings. The solution handles SolidWorks and AutoCAD drawings.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="45ook-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="45ook-0-0">
    <span data-offset-key="45ook-0-0"> </span>
  </div>
</div>

<h2 class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="fvf45-0-0">
  <span data-offset-key="fvf45-0-0">The problem</span>
</h2>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="fj2l3-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="fj2l3-0-0">
    <span data-offset-key="fj2l3-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="8gqu3-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="8gqu3-0-0">
    <span data-offset-key="8gqu3-0-0">The company had a solution for plotting engineering drawings.  Employees in production had a fast utility to lookup CAD drawings. There were tens of thousands of drawings.  Printing was a simple button click.  There were no printer dialogs.  No printer choices.  No choosing settings.  Less wasted paper.  It was a huge time and resource saver.  With the upgrade to Windows 7 the supporting engineering tools no longer worked.  The efficient CAD printing no longer worked after the I.T. upgrades.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="caf6e-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="caf6e-0-0">
    <span data-offset-key="caf6e-0-0"> </span>
  </div>
</div>

<h2 class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="f7amg-0-0">
  <span data-offset-key="f7amg-0-0">The parts</span>
</h2>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="d9asj-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="d9asj-0-0">
    <span data-offset-key="d9asj-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="45hts-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="45hts-0-0">
    <span data-offset-key="45hts-0-0">eDrawings is a free utility from SolidWorks.  eDrawings opens SolidWorks and AutoCAD drawing files.  eDrawings updates every year.  eDrawings handles new AutoCAD drawing formats with the updates.  Like most of SolidWorks, you can automate eDrawings.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="9l2k5-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="9l2k5-0-0">
    <span data-offset-key="9l2k5-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="e1jdj-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="e1jdj-0-0">
    <span data-offset-key="e1jdj-0-0">novaPDF is a utility to generate Adobe Acrobat [.PDF] files.  novaPDF is available on Windows computers.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="crbvv-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="crbvv-0-0">
    <span data-offset-key="crbvv-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="abcm7-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="abcm7-0-0">
    <span data-offset-key="abcm7-0-0">Microsoft Access 64bit.  Most use the 32bit versions of MS Access and MS Office.  For this solution we need a 64bit VBA capable container to host the eDrawings component.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="eoto9-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="eoto9-0-0">
    <span data-offset-key="eoto9-0-0"> </span>
  </div>
</div>

<h2 class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="1rtm-0-0">
  <span data-offset-key="1rtm-0-0">The solution</span>
</h2>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="dfspo-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="dfspo-0-0">
    <span data-offset-key="dfspo-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="ble4c-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="ble4c-0-0">
    <span data-offset-key="ble4c-0-0">With novaPDF create some virtual printers.  Create separate printers for each CAD drawing page size and orientation.  For example: &#8216;B_Size_portrait&#8217;, &#8216;B_Size_landscape&#8217;, &#8216;D_Size_landscape&#8217;, &#8216;C_Size_landscape&#8217;.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="7f7c-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="7f7c-0-0">
    <span data-offset-key="7f7c-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="a1cmf-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="a1cmf-0-0">
    <span data-offset-key="a1cmf-0-0">Create a blank MS Access database application.  Add a blank Form without a linked table.  Embed the eDrawings component into the form.  </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="alj53-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="alj53-0-0">
    <span data-offset-key="alj53-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="d5krp-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="d5krp-0-0">
    <span data-offset-key="d5krp-0-0">Switch to the VBA editor for the MS Access Form.  The first step is a loop to watch for new SolidWorks or AutoCAD drawing files.  Opening each drawing file in turn.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="foe7h-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="foe7h-0-0">
    <span data-offset-key="foe7h-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="3gmge-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="3gmge-0-0">
    <span data-offset-key="3gmge-0-0">Use the eDrawings component Event functions to handle the file once it opens.  The eDrawings component has properties to detect the drawing paper size and orientation.  Use those properties to choose the matching novaPDF virtual printer and print.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="ef22t-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="ef22t-0-0">
    <span data-offset-key="ef22t-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="a0l4r-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="a0l4r-0-0">
    <span data-offset-key="a0l4r-0-0">Provide error handling for the eDrawings Event functions for problems like corrupt files.  This app rejects undefined paper sizes.  We ran into a problem detecting AutoCAD drawing sizes that used different scales.  The solution was to calculate the size ratio of height to width and use the ratio to select the output paper size.  The MS Access/eDrawings solution becomes unstable after processing 40 to 50 files.  Auto-restarting MS Access after 20 to 30 files solves the problem.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="5qup1-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="5qup1-0-0">
    <span data-offset-key="5qup1-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="8j68r-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="8j68r-0-0">
    <span data-offset-key="8j68r-0-0">This PDF Generator solution runs on a Windows virtual machine.  It averages processing drawing files every three to five seconds with moderate resources.  The solution keeps up with an engineering department of about a dozen.  Well over a hundred thousand legacy CAD files ran through the PDF Generator.</span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="7heir-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="7heir-0-0">
    <span data-offset-key="7heir-0-0"> </span>
  </div>
</div>

<div class="" data-block="true" data-editor="7kljv" data-offset-key="4uok3-0-0">
  <div class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr" data-offset-key="4uok3-0-0">
    <span data-offset-key="4uok3-0-0">There are a few other pieces to the solution.  A lightweight, custom server process provides point and click printing.  A custom web server and front end JavaScript client provides searching and viewing.  The CAD library is now available to desktops, laptops, tablets and smartphones now. There are other, comercial solutions but this preserved the company&#8217;s workflow.</span>
  </div>
</div>