---
title: Troubleshooting Application Virtualization Sequencer Issues
description: Troubleshooting Application Virtualization Sequencer Issues
author: dansimp
ms.assetid: 2712094b-a0bc-4643-aced-5415535f3fec
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Troubleshooting Application Virtualization Sequencer Issues


This topic includes information that you can use to help troubleshoot general issues on the Application Virtualization (App-V) Sequencer.

## Creating an SFTD File by Using the App-V Sequencer Increases the Version Number Unexpectedly


Use the command line to generate a new .sft file. To create the .sft file by using the command line, enter the following at a command prompt:

**mkdiffpkg.exe &lt;base SFT file name&gt; &lt;diff SFT file name&gt;**

## <a href="" id="file-name-in-osd-file-is-not-correct-after-package-upgrade-"></a>File Name in OSD File Is Not Correct After Package Upgrade


When you open a package for upgrade, you should specify the root Q:\\ drive as the output location for the package. Do not specify an associated file name with the output location.

## Microsoft Word 2003 Default Install Results in an Error When Streamed to a Client


When you stream Microsoft Word 2003 to a client, an error is returned, but Microsoft Word continues to run.

**Solution**

Resequence the virtual application package and select **Full Install**.

## Active Upgrade Does Not Work When You Create a Dependent Package


When you create a dependent package by using active upgrade and add new registry entries, it appears to function correctly, but the updated registry entries are not available.

**Solution**

Registry settings are always stored with the original version of the package, so updates to the package will not appear to be available unless you repair the original package.

## Detailed information is not visible for Microsoft Office 2007 documents by using the properties page


When you try to view detailed information associated with a Microsoft Office 2007 document by using the properties page, the detailed information is not visible.

**Solution**

App-V does not support the required shell extensions for these property pages.

## Some registry keys are not captured when you sequence 16-bit applications


In App-V 4.5, registry hooking has been moved from kernel mode to user mode. If you want to sequence a 16-bit application or an application that uses a 16-bit installer, you must first configure the sequencer computer so that the process runs in its own copy of the Windows NT Virtual DOS Machine (NTVDM).

**Solution**

Before you sequence the application, set the following global REGSZ registry key value to "yes" on the sequencing computer:

HKLM\\SYSTEM\\CurrentControlSet\\Control\\WOW\\DefaultSeparateVDM

You must restart the computer before this takes effect.

## Related topics


[Application Virtualization Sequencer](application-virtualization-sequencer.md)

 

 





