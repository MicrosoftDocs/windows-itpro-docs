---
title: Release Notes for DaRT 8.0 SP1
description: Release Notes for DaRT 8.0 SP1
author: msfttracyp
ms.assetid: fa7512d8-fb00-4c27-8f65-c15f3a8ff1cc
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Release Notes for DaRT 8.0 SP1


**To search these release notes, press CTRL+F.**

Read these release notes thoroughly before you install Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0 Service Pack 1 (SP1).

These release notes contain information that is required to successfully install Diagnostics and Recovery Toolset 8.0 SP1. The release notes also contain information that is not available in the product documentation. If there is a difference between these release notes and other DaRT documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

## About the product documentation


For information about documentation for DaRT, see the [DaRT home page](https://go.microsoft.com/fwlink/?LinkID=252096) on Microsoft TechNet.

## Known issues with DaRT 8.0 SP1


### System restore fails when you run Locksmith or Registry Editor

If you run Locksmith, Registry Editor, and possibly other tools, System Restore fails.

**Workaround:** Close and restart DaRT and then start System Restore.

### SFC scan fails to run after you launch and close Locksmith or Computer Management

If you start and then close the Locksmith or Computer Management tools, System File Checker fails to run.

**Workaround:** Close and restart DaRT and then start SFC.

### <a href="" id="-------------dart-installer-does-not-fail-when-adk-has-not-been-installed"></a> DaRT installer does not fail when ADK has not been installed

If you install DaRT 8.0 SP1 by using the command line to run the MSI, and the ADK has not been installed, the DaRT installation should fail. Currently, the DaRT 8.0 SP1 installer installs all components except the DaRT recovery image.

**Workaround:** None.

### Defender cannot be launched after Locksmith, RegEdit, Crash Analyzer, and Computer Management are launched

Defender does not launch if you have already launched Locksmith, RegEdit, Crash Analyzer, and Computer Management.

**Workaround:** Close and restart DaRT and then launch Defender.

### Defender may be slow to launch

Defender sometimes takes a few minutes to launch. The progress bar indicates the current loading status.

**Workaround:** None.

## Release notes copyright information


Microsoft, Active Directory, ActiveX, Bing, Excel, Silverlight, SQL Server, Windows, Microsoft Intune, and Windows PowerShell are trademarks of the Microsoft group of companies. All other trademarks are property of their respective owners.



## Related topics


[About DaRT 8.0 SP1](about-dart-80-sp1.md)

 

 





