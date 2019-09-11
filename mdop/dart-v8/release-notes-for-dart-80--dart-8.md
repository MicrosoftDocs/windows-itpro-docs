---
title: Release Notes for DaRT 8.0
description: Release Notes for DaRT 8.0
author: dansimp
ms.assetid: e8b373c8-7aa5-4930-a8f9-743d26145dad
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Release Notes for DaRT 8.0


**To search these release notes, press CTRL+F.**

Read these release notes thoroughly before you install Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0.

These release notes contain information that is required to successfully install DaRT 8.0. The release notes also contain information that is not available in the product documentation. If there is a difference between these release notes and other DaRT documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

To get the DaRT software, see [How to Get MDOP](https://go.microsoft.com/fwlink/?LinkId=322049).

## About the product documentation


For information about documentation for DaRT, see the [DaRT home page](https://go.microsoft.com/fwlink/?LinkID=252096) on Microsoft TechNet.

To obtain a downloadable copy of DaRT documentation, see <https://go.microsoft.com/fwlink/?LinkID=267420> on the Microsoft Download Center.

## Providing feedback


We are interested in your feedback on DaRT 8.0. You can send your feedback to <mdopdocs@microsoft.com>.

**Note**  
This email address is not a support channel, but your feedback will help us to plan future changes for our documentation and product releases.

 

For the latest information about MDOP and additional learning resources, see the [MDOP Information Experience](https://go.microsoft.com/fwlink/p/?LinkId=236032) page.

For more information about new updates or to provide feedback, follow us on [Facebook](https://go.microsoft.com/fwlink/p/?LinkId=242445) or [Twitter](https://go.microsoft.com/fwlink/p/?LinkId=242447).

## Known issues with DaRT 8.0


### System restore fails when you run Locksmith or Registry Editor

If you run Locksmith, Registry Editor, and possibly other tools, System Restore fails.

**Workaround:** Close and restart DaRT and then start System Restore.

### SFC scan fails to run after you launch and close Locksmith or Computer Management

If you start and then close the Locksmith or Computer Management tools, System File Checker fails to run.

**Workaround:** Close and restart DaRT and then start SFC.

### <a href="" id="-------------dart-installer-does-not-fail-when-adk-has-not-been-installed"></a> DaRT installer does not fail when ADK has not been installed

If you install DaRT 8.0 by using the command line to execute the MSI, and the ADK has not been installed, the DaRT installation should fail. Currently, the DaRT 8.0 installer installs all components except the DaRT 8.0 recovery image.

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


[About DaRT 8.0](about-dart-80-dart-8.md)

 

 





