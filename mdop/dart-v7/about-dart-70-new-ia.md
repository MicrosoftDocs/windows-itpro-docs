---
title: About DaRT 7.0
description: About DaRT 7.0
author: dansimp
ms.assetid: 217ffafc-6d73-4b80-88d9-71870460d4ab
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# About DaRT 7.0


Microsoft Diagnostics and Recovery Toolset (DaRT) 7 helps you troubleshoot and repair Windows-based desktops. This includes those desktops that cannot be started. DaRT is a powerful set of tools that extend the Windows Recovery Environment (WinRE). By using DaRT, you can analyze an issue to determine its cause, for example, by inspecting the computer’s event log or system registry.

DaRT also provides tools to help you fix a problem as soon as you determine the cause. For example, you can use the tools in DaRT to disable a faulty device driver, remove hotfixes, restore deleted files, and scan the computer for malware even when you cannot or should not start the installed Windows operating system.

DaRT can help you quickly recover computers that are running either 32-bit or 64-bit versions of Windows 7, typically in less time than it would take to reimage the computer.

## About the DaRT 7 Recovery Image


Functionality in DaRT lets you create a recovery image that is based on WinRE combined with a set of tools that DaRT provides. The DaRT recovery image takes advantage of WinRE, from which you can access the **Diagnostics and Recovery Toolset** window.

Use the **DaRT Recovery Image Wizard** to create the DaRT recovery image. By default, the wizard creates an International Organization for Standardization (ISO) image file on your desktop that is named DaRT70.iso, although you can specify a different location and file name. The wizard also lets you burn the image to a CD or DVD. After you have finished the wizard, you can save the recovery image to a USB flash drive or save it in a format that you can use to create a remote partition or a recovery partition.

When you have to use DaRT to startup an end-user computer that will not start, you can follow the instructions at [How to Recover Local Computers Using the DaRT Recovery Image](how-to-recover-local-computers-using-the-dart-recovery-image-dart-7.md).

For detailed information about the tools in DaRT, see [Overview of the Tools in DaRT 7.0](overview-of-the-tools-in-dart-70-new-ia.md).

## <a href="" id="what-s-new-in-dart-7"></a>What’s New in DaRT 7


DaRT 7 continues to support all the scenarios included in previous versions and it adds a new Remote Connection feature in addition to three new deployment options.

### DaRT 7 Image Creation

The wizard that you use to create DaRT ISO images is now called **DaRT Recovery Image** and it now supports an option to enable or disable the new Remote Connection feature. Remote Connection lets a helpdesk agent run the DaRT tools from a remote location. In previous releases, the helpdesk agent had to be physically present at the end-user computer to run the DaRT tools.

The wizard also lets you customize the Welcome message for the Remote Connection feature (the message is shown when end users run the Remote Connection tool). IT Admins can also configure which Port Number should be used by Remote Connection.

For more information about the **DaRT Recovery Image Wizard** or Remote Connection, see [Creating the DaRT 7.0 Recovery Image](creating-the-dart-70-recovery-image-dart-7.md).

### DaRT 7 ISO Deployment

In addition to burning to a CD or DVD, DaRT 7 adds three new options when you deploy the ISO that contains the DaRT recovery image:

-   USB flash drive deployment

-   Remote partition deployment

-   Recovery partition deployment

The USB flash drive deployment option lets a company use DaRT on computers that do not have CD or DVD drives available. The recovery and remote partition options let end users have easy access to the DaRT image and to enable the Remote Connection functionality.

For more information about how to deploy DaRT recovery images, see [Deploying the DaRT 7.0 Recovery Image](deploying-the-dart-70-recovery-image-dart-7.md).

## Related topics


[Getting Started with DaRT 7.0](getting-started-with-dart-70-new-ia.md)

[Release Notes for DaRT 7.0](release-notes-for-dart-70-new-ia.md)

 

 





