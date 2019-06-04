---
title: What's New in UE-V 2.1 SP1
description: What's New in UE-V 2.1 SP1
author: levinec
ms.assetid: 9a40c737-ad9a-4ec1-b42b-31bfabe0f170
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# What's New in UE-V 2.1 SP1


User Experience Virtualization 2.1 SP1 provides these new features and functionality compared to UE-V 2.1. The [Microsoft User Experience Virtualization (UE-V) 2.1 SP1 Release Notes](microsoft-user-experience-virtualization--ue-v--21-sp1-release-notes.md) provide more information about the UE-V 2.1 SP1 release.

## Support for Windows 10


UE-V 2.1 SP1 adds support for Windows 10, in addition to the same software that is supported in earlier versions of UE-V.

### Compatibility with Microsoft Azure

Windows 10 lets enterprise users synchronize Windows app settings and Windows operating system settings to Azure instead of to OneDrive. You can use the Windows 10 enterprise sync functionality together with UE-V for on-premises domain-joined computers only. To enable coexistence between Windows 10 and UE-V, you must disable the following UE-V templates using either PowerShell on each client or Group Policy.

In Group Policy, under the Microsoft User Experience Virtualization node, configure these policy settings:

-   Enable “Do Not Synchronize Windows Apps”

-   Disable “Sync Windows Settings”

### Settings Synchronization Behavior Changed for Windows 10 Support

UE-V 2.1 SP1 roams taskbar settings between Windows 10 devices. However, UE-V does not synchronize taskbar settings between Windows 10 devices and devices running previous operating systems.

In addition, UE-V 2.1 SP1 does not synchronize settings between the Microsoft Calculator in Windows 10 and the Microsoft Calculator in previous operating systems.

## Support Added for Roaming Network Printers


UE-V 2.1 SP1 lets network printers roam between devices so that a user has access to their network printers when logged on to any device on the network. This includes roaming the printer that they set as the default.

Printer roaming in UE-V requires one of these scenarios:

-   The print server can download the required driver when it roams to a new device.

-   The driver for the roaming network printer is pre-installed on any device that needs to access that network printer.

-   The printer driver can be obtained from Windows Update.

**Note**  
The UE-V printer roaming feature does **not** roam printer settings or preferences, such as printing double-sided.

 

## Office 2013 Settings Location Template


UE-V 2.1 and 2.1 SP1 include the Microsoft Office 2013 settings location template with improved Outlook signature support. We’ve added synchronization of default signature settings for new, reply, and forwarded emails. Customers no longer have to choose the default signature settings.

**Note**  
An Outlook profile must be created for any device on which a user wants to sync their Outlook signature. If the profile is not already created, the user can create one and then restart Outlook on that device to enable signature synchronization.

 

Previously UE-V included Microsoft Office 2010 settings location templates that were automatically distributed and registered with the UE-V Agent. UE-V 2.1 works with Office 365 to determine whether Office 2013 settings are roamed by Office 365. If settings are roamed by Office 365 they are not roamed by UE-V. [Overview of user and roaming settings for Office 2013](https://go.microsoft.com/fwlink/p/?LinkID=391220) provides more information.

To enable settings synchronization using UE-V 2.1, do one of the following:

-   Use Group Policy to disable Office 365 synchronization

-   Do not enable the Office 365 synchronization experience during Office 2013 installation

UE-V 2.1 ships [Office 2013 and Office 2010 templates](https://technet.microsoft.com/library/dn458932.aspx#autosyncsettings). This release removes the Office 2007 templates. Users can still use Office 2007 templates from UE-V 2.0 or earlier and can still get the templates from the UE-V template gallery located [here](https://go.microsoft.com/fwlink/p/?LinkID=246589).






## Related topics


[Get Started with UE-V 2.x](get-started-with-ue-v-2x-new-uevv2.md)

[Prepare a UE-V 2.x Deployment](prepare-a-ue-v-2x-deployment-new-uevv2.md)

[Microsoft User Experience Virtualization (UE-V) 2.1 SP1 Release Notes](microsoft-user-experience-virtualization--ue-v--21-sp1-release-notes.md)

 

 





