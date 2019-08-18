---
title: Managing drivers, dual-managed environments, and Delivery Optimization with group policies in Windows Update for Business
description: Learn how to manage drivers, dual managed environments, and bandwidth (Delivery Optimization) with GPOs in Windows Update for Business.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.localizationpriority: medium
ms.audience: itproauthor: greg-lindsay
ms.date: 06/21/2018
ms.reviewer: 
manager: laurawi
ms.topic: article
---
# Managing drivers, dual-managed environments, and Delivery Optimization with group policies

>Applies to: Windows 10

Use the following group policy information to manage drivers, to manage environments using both Windows Update for Business and Windows Server Update Services, and to manage the bandwidth required for updates with Delivery Optimization.

## Managing drivers
Windows Update for Business provides the ability to manage drivers from the Windows Update service. By default, drivers will be offered to your Windows Update-connected devices. Our guidance here is to continue to receive drivers from Windows Update. Alternatively, you can enable the following policy to stop receiving drivers from Windows Update. 

### Policy overview 

|Policy| Description |
|-|-|
|Do not include drivers with Windows Update |When enabled prevents Windows Update from offering drivers.|

### Suggested configuration 

|Policy| Location|Suggested configuration |
|-|-|-|
|Do not include drivers with Windows Update |GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Do not include drivers with Windows Updates|State: Disabled |

## Dual-managed environment 

You can use an on-premises catalog, like WSUS, to deploy 3rd Party patches and use Windows Update to deploy feature and quality updates. We provide capabilities to deploy content from both Windows Update Service and from WSUS. In addition to the policies for managing drivers, apply the following configurations to your environment. 

|Policy| Description |
|-|-|
|Specify Intranet Microsoft Update Service Location| Used for WSUS/System Center Configuration Manager customers who want to install custom packages that are not offered through Windows Update.|

### Suggested configuration 

|Policy| Location|Suggested configuration |
|-|-|-|
|Specify Intranet Microsoft Update Service Location|GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Specify Intranet Microsoft update service location|State: Enabled <br>**Set the Intranet Update service for detecting updates**: <br>**Set the Intranet statistics server**: <br>**Set the alternate download server**: |

## Download Optimization - Managing your bandwidth 

[Delivery Optimization](waas-delivery-optimization.md) is Windows 10's built-in downloader and peer-caching technology that can benefit CSE for network bandwidth reduction of Windows 10 servicing updates. Windows 10 clients can source content from other devices on their local network that have already downloaded the same updates in addition to downloading these updates from Microsoft. Using the settings available for Delivery Optimization, clients can be configured into groups, allowing organizations to identify devices that are possibly the best candidates to fulfil peer-to-peer requests. To configure devices for delivery optimization, ensure the following configurations are set. 

|Policy| Description |
|-|-|
|Download Mode|	2=HTTP blended with peering across a private group. Peering occurs on devices in the same Active Directory Site (if exist) or the same domain by default. When this option is selected, peering will cross NATs. To create a custom group use Group ID in combination with Mode 2|
|Minimum Peer Caching Content File Size (in MB)|Specifies the minimum content file size in MB enabled to use peer caching. <br>Choose a size that meets your environment's constraints.| 
|Allow uploads while the device is on battery while under set battery level (percentage)|Specify a battery level from 1-100, where the device will pause uploads once the battery level drops below that percentage. |
|Max Cache Age (in seconds)|Maximum number of seconds to keep data in cache.|

### Suggested configuration  

|Policy| Location| Suggested configuration |
|-|-|-|
|Download Mode|GPO: Computer Configuration > Administrative Templates > Windows Components > Delivery Optimization > Download Mode|State: Enabled <br>**Download Mode**: Group (2)|
|Minimum Peer Caching Content File Size (in MB)|GPO: Computer Configuration > Administrative Templates > Windows Components > Delivery Optimization > Minimum Peer Caching Content File Size (in MB)|State: Enabled <br>**Minimum Peer caching content file size (in MB)**: 10 MB|
|Allow uploads while the device is on battery while under set battery level (percentage)|GPO: Computer Configuration > Administrative Templates > Windows Components > Delivery Optimization > Allow uploads while the device is on battery while under set battery level (percentage)|State: Enabled <br>**Minimum battery level (Percentage)**: 60|
|Max Cache Age (in seconds)|GPO: Computer Configuration > Administrative Templates > Windows Components > Delivery Optimization > Max Cache Age (in seconds)|State: Enabled <br>**Max Cache Age (in seconds)**: 604800 ~ 7 days|
