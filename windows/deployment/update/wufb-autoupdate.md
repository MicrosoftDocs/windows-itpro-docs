---
title: Setting up Automatic Update in Windows Update for Business (Windows 10)
description: Learn how to get started using Windows Update for Business.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: lizap
ms.localizationpriority: medium
ms.author: elizapo
ms.date: 06/20/2018
---

# Set up Automatic Update in Windows Update for Business with group policies

>Applies to: Windows 10

Use the Automatic Update group policies to manage the interaction between Windows Update and clients.

Automatic Update governs the "behind the scenes" download and installation processes. It's important to keep in mind the device limitation in your environment as the download and install process can consume processing power. The below section outlines the ideal configuration for devices with the least amount of user experience degradation.

|Policy|Description |
|-|-|
|Configure Automatic Updates|Governs the installation activity that happens in the background. This allows you to configure the installation to happen during the [maintenance window](https://docs.microsoft.com/sccm/core/clients/manage/collections/use-maintenance-windows). Also, you can specify an installation time where the device will also try to install the latest packages. You can also pick a certain day and or week.|
|Automatic Update Detection Frequency|Lets you set the scan frequency the device will use to connect to Windows Update to see if there is any available content. Default is 22 hours, but you can increase or decrease the frequency. Keep in mind a desktop computer may need to scan less frequently than laptops, which can have intermittent internet connection.|
|Specify Intranet Microsoft Update Service Location|Used for Windows Server Update Services or System Center Configuration Manager users who want to install custom packages that are not offered through Windows Update.|
|Do not connect to any Windows Update Internet locations <br>Required for Dual Scan|Prevents access to Windows Update.|

## Suggested configuration

|Policy|Location|Suggested configuration|
|-|-|-|
|Configure Automatic Updates|	GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Configure Automatic Updates|	State: Enabled <br>**Configure Automatic Updating**: 4 – Automatic Update and Schedule the Install <br>**Install during maintenance window**: "check box"<br>**Schedule Install day**: 0 – Everyday<br>**Schedule Install time**: 11:00 <br>**Install Week**: Every Week <br>**Select checkbox**: Install updates for other Microsoft products |
|Automatic Update Detection Frequency|GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Automatic Updates detection frequency|State: Enabled <br>**Check for updates on the following interval (hours)**: 22|
|Do not connect to any Windows Update Internet locations (Required for Dual Scan) |	GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Do not connect to any Windows Update Internet locations	|State: Disabled |
