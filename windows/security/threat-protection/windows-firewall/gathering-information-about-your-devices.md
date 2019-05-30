---
title: Gathering Information about Your Devices (Windows 10)
description: Gathering Information about Your Devices
ms.assetid: 7f7cd3b9-de8e-4fbf-89c6-3d1a47bc2beb
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 08/17/2017
---

# Gathering Information about Your Devices

**Applies to**
-   Windows 10
-   Windows Server 2016

One of the most valuable benefits of conducting an asset discovery project is the large amount of data that is obtained about the client and server devices on the network. When you start designing and planning your isolation zones, you must make decisions that require accurate information about the state of all hosts to ensure that they can use IPsec as planned.

Capture the following information from each device:

-   **Computer name**. This name is the device's NetBIOS or DNS name that identifies the device on the network. Because a device can have more than one media access control (MAC) or IP address, the device's name is one of the criteria that can be used to determine uniqueness on the network. Because device names can be duplicated under some circumstances, the uniqueness should not be considered absolute.

-   **IP address for each network adapter**. The IP address is the address that is used with the subnet mask to identify a host on the network. An IP address is not an effective way to identify an asset because it is often subject to change.

-   **Operating system, service pack, and hotfix versions**. The operating system version is a key factor in determining the ability of a host to communicate by using IPsec. It is also important to track the current state of service packs and updates that might be installed, because these are often used to determine that minimum security standards have been met.

-   **Domain membership**. This information is used to determine whether a device can obtain IPsec policy from Active Directory or whether it must use a local IPsec policy.

-   **Physical location**. This information is just the location of the device in your organization. It can be used to determine whether a device can participate in a specific isolation group based on its location or the location of the devices that it communicates with regularly.

-   **Hardware type or role**. Some tools that perform host discovery can provide this information by querying the hardware information and running applications to determine its type, such as server, workstation, or portable device. You can use this information to determine the appropriate IPsec policy to assign, whether a specific device can participate in isolation, and in which isolation group to include the device.

After collecting all this information and consolidating it into a database, perform regular discovery efforts periodically to keep the information current. You need the most complete and up-to-date picture of the managed hosts on their networks to create a design that matches your organization's requirements.

You can use various methods to gather data from the hosts on the network. These methods range from high-end, fully automated systems to completely manual data collection. Generally, the use of automated methods to gather data is preferred over manual methods for reasons of speed and accuracy.

## Automated Discovery

Using an automated auditing network management system provides valuable information about the current state of the IT infrastructure.


## Manual Discovery


The biggest difference between manual discovery methods and automated methods is time.

You can use Windows PowerShell to create a script file that can collect the system configuration information. For more information, see [Windows PowerShell Scripting](https://go.microsoft.com/fwlink/?linkid=110413).

Whether you use an automatic, manual, or hybrid option to gather the information, one of the biggest issues that can cause problems to the design is capturing the changes between the original inventory scan and the point at which the implementation is ready to start. After the first scan has been completed, make support staff aware that all additional changes must be recorded and the updates noted in the inventory.

This inventory will be critical for planning and implementing your Windows Defender Firewall design.

**Next: **[Gathering Other Relevant Information](gathering-other-relevant-information.md)
