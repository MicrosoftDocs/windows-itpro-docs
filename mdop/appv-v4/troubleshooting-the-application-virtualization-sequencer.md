---
title: Troubleshooting the Application Virtualization Sequencer
description: Troubleshooting the Application Virtualization Sequencer
author: dansimp
ms.assetid: 12ea8367-0b84-44e1-a885-e0539486556b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Troubleshooting the Application Virtualization Sequencer


This topic includes information that you can use to help troubleshoot general issues on the Application Virtualization (App-V) Sequencer.

## Creating an SFTD File by Using the App-V Sequencer Increases the Version Number Unexpectedly


The version number associated with an SFTD file increases unexpectedly.

**Solution**

Use the command line to generate a new .sft file. To create the .sft file by using the command line, enter the following at a command prompt:

**mkdiffpkg.exe &lt;base SFT file name&gt; &lt;diff SFT file name&gt;**

## <a href="" id="file-name-in-osd-file-is-not-correct-after-package-upgrade-"></a>File Name in OSD File Is Not Correct After Package Upgrade


After you upgrade an existing package, the file name is not correct.

**Solution**

When you open a package for upgrade, you should specify the root Q:\\ drive as the output location for the package. Do not specify an associated file name with the output location.

## Microsoft Word 2003 Default Install Results in an Error When Streamed to a Client


When you stream Microsoft Word 2003 to a client, an error is returned but Microsoft Word continues to run.

**Solution**

Resequence the virtual application package, and select **Full Install**.

## Package Upgrade Does Not Work When You Create a Dependent Package


When you create a dependent package by using package upgrade and add new registry entries, it appears to function correctly but the updated registry entries are not available.

**Solution**

Registry settings are always stored with the original version of the package, so updates to the package will not appear to be available unless you repair the original package.

## Error When Trying to Sequence .NET 2.0


When you sequence a package that requires .NET 2.0, you get an error.

**Solution**

Sequencing packages that require .NET 2.0 is not supported.

## Related topics


[Application Virtualization Sequencer](application-virtualization-sequencer.md)

 

 





