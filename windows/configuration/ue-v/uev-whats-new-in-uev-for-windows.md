---
title: What's New in UE-V for Windows 10, version 1607
description: What's New in UE-V for Windows 10, version 1607
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---

# What's New in UE-V 

**Applies to**
-   Windows 10, version 1607

User Experience Virtualization (UE-V) for Windows 10, version 1607, includes these new features and capabilities compared to UE-V 2.1. See [UE-V Release notes](uev-release-notes-1607.md) for more information about the UE-V for Windows 10, version 1607 release.

## UE-V is now a feature in Windows 10

With Windows 10, version 1607 and later releases, UE-V is included with [Windows 10 for Enterprise](https://www.microsoft.com/WindowsForBusiness/windows-for-enterprise) and is no longer part of the Microsoft Desktop Optimization Pack. 

The changes in UE-V for Windows 10, version 1607 impact already existing implementations of UE-V in the following ways:

- The UE-V Agent is replaced by the UE-V service. The UE-V service is installed with Windows 10, version 1607 and no longer has to be deployed separately. Performing an in-place upgrade to Windows 10, version 1607, on user devices automatically installs the UE-V service, migrates users’ UE-V configurations, and updates the settings storage path.

- The UE-V template generator is available from the Windows 10 ADK. In previous releases of UE-V, the template generator was included in the Microsoft Desktop Optimization Pack. Although you’ll need to use the new template generator to create new settings location templates, existing settings location templates will continue to work. 

- The Company Settings Center was removed and is no longer available on user devices. Users can no longer manage their synchronized settings. 

- The inbox templates such as Office 2016 and IE 10 are included as a part of Windows 10 and need to be manually registered with Powershell or Group policy before use.

For more information about how to configure an existing UE-V installation after upgrading user devices to Windows 10, see [Upgrade to UE-V for Windows 10](uev-upgrade-uev-from-previous-releases.md).

> **Important**&nbsp;&nbsp;You can upgrade your existing UE-V installation to Windows 10 from UE-V versions 2.1 or 2.0 only. If you are using a previous version of UE-V, you’ll need to upgrade from that version to UE-V 2.x before you upgrade to Windows 10.

## New UE-V template generator is available from the Windows 10 ADK

UE-V for Windows 10 includes a new template generator, available from a new location. If you are upgrading from an existing UE-V installation, you’ll need to use the new generator to create settings location templates. The UE-V for Windows 10 template generator is now available in the [Windows 10 Assessment and Deployment Kit](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit) (Windows ADK).

## Company Settings Center removed in UE-V for Windows 10, version 1607

In previous versions of UE-V, users could select which of their customized application settings to synchronize with the Company Settings Center, a user interface that was available on user devices. Additionally, administrators could configure the Company Settings Center to include a link to support resources so that users could easily get support on virtualized settings-related issues.

With the release of Windows 10, version 1607, the Company Settings Center was removed and users can no longer manage their synchronized settings. 

Administrators can still define which user-customized application settings can synchronize (roam) with Group Policy or Windows PowerShell.  

**Note** With the removal of the Company Settings Center, the following group policies are no longer applicable:

-   Contact IT Link Text
-   Contact IT URL
-   Tray Icon

## Compatibility with Microsoft Enterprise State Roaming

With Windows 10, version 1607, users can synchronize Windows application settings and Windows operating system settings to Azure instead of to OneDrive. You can use the Windows 10 enterprise sync functionality together with UE-V for on-premises domain-joined devices only.

In hybrid cloud environments, UE-V can roam Win32 applications on-premises while [Enterprise State Roaming](https://azure.microsoft.com/documentation/articles/active-directory-windows-enterprise-state-roaming-overview/) (ESR) can roam the rest, e.g., Windows and desktop settings, themes, colors, etc., to an Azure cloud installation.

To configure UE-V to roam Windows desktop and application data only, change the following group policies:

-   Disable “Roam Windows settings” group policy

-   Enable “Do not synchronize Windows Apps” group policy

For more information about using UE-V with Enterprise State Roaming, see [Settings and data roaming FAQ](https://azure.microsoft.com/documentation/articles/active-directory-windows-enterprise-state-roaming-faqs/#what-are-the-options-for-roaming-settings-for-existing-windows-desktop-applications).

Additionally, to enable Windows 10 and UE-V to work together, configure these policy settings in the Microsoft User Experience Virtualization node:

-   Enable “Do Not Synchronize Windows Apps”

-   Disable “Sync Windows Settings”


## Settings Synchronization Behavior Changed in UE-V for Windows 10

While earlier versions of UE-V roamed taskbar settings between Windows 10 devices, UE-V for Windows 10, version 1607 does not synchronize taskbar settings between devices running Windows 10 and devices running previous versions of Windows.

In addition, UE-V for Windows has removed support for the Windows calculator application.

The Windows modern apps settings (DontSyncWindows8AppSettings) group policy is enabled by default and therefore, modern apps will not roam unless this policy is changed to disabled.

Please note, UE-V will roam any AppX apps that use the WinRT settings roaming API, provided that they have been opted in to roam at the time of development by the developer so there is no definitive list.

## Support Added for Roaming Network Printers

Users can now print to their saved network printers from any network device, including their default network printer.

Printer roaming in UE-V requires one of these scenarios:

-   The print server can download the required driver when it roams to a new device.

-   The driver for the roaming network printer is pre-installed on any device that needs to access that network printer.

-   The printer driver can be imported from Windows Update.

> **Note**&nbsp;&nbsp;The UE-V printer roaming feature does not roam printer settings or preferences, such as printing double-sided.

## Office 2016 Settings Location Template

UE-V for Windows 10, version 1607 includes the Microsoft Office 2016 settings location template with improved Outlook signature support. We’ve added synchronization of default signature settings for new, reply, and forwarded emails. Users no longer have to choose the default signature settings.

> **Note**&nbsp;&nbsp;An Outlook profile must be created on any device on which a user wants to synchronize their Outlook signature. If the profile is not already created, the user can create one and then restart Outlook on that device to enable signature synchronization.

UE-V works with Office 365 to determine whether Office 2016 settings are roamed by Office 365. If settings are roamed by Office 365, they are not roamed by UE-V. See [Overview of user and roaming settings for Microsoft Office](https://technet.microsoft.com/library/jj733593.aspx) for more information.

To enable settings synchronization using UE-V, do one of the following:

-   Use Group Policy to disable Office 365 synchronization

-   Do not enable the Office 365 synchronization experience during Office 2013 installation

UE-V includes Office 2016, Office 2013, and Office 2010 templates. Office 2007 templates are no longer supported. Users can still use Office 2007 templates from UE-V 2.0 or earlier and can still get templates from the [User Experience Virtualization Template Gallery](https://gallery.technet.microsoft.com/site/search?f%5B0%5D.Type=RootCategory&f%5B0%5D.Value=UE-V&f%5B0%5D.Text=UE-V).





## Related topics

- [Microsoft User Experience Virtualization](uev-for-windows.md)

- [Get Started with UE-V](uev-getting-started.md)

- [Prepare a UE-V Deployment](uev-prepare-for-deployment.md)

- [User Experience Virtualization (UE-V) Release Notes](uev-release-notes-1607.md) for Windows 10, version 1607

- [Upgrade to UE-V for Windows 10](uev-upgrade-uev-from-previous-releases.md) 
