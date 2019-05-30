---
title: User Experience Virtualization (UE-V) Release Notes
description: User Experience Virtualization (UE-V) Release Notes
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.topic: article
---

# User Experience Virtualization (UE-V) Release Notes

**Applies to**
-   Windows 10, version 1607

This topic includes information required to successfully install and use UE-V that is not included in the User Experience Virtualization (UE-V) documentation. If there are differences between the information in this topic and other UE-V topics, the latest change should be considered authoritative.

### Company Settings Center removed in UE-V for Windows 10, version 1607

In previous versions of UE-V, users could select which of their customized application settings to synchronize with the Company Settings Center, a user interface that was available on user devices. Additionally, administrators could configure the Company Settings Center to include a link to support resources so that users could easily get support on virtualized settings-related issues.

With the release of Windows 10, version 1607, the Company Settings Center was removed and users can no longer manage their synchronized settings.

Administrators can still define which user-customized application settings can synchronize (roam) with Group Policy or Windows PowerShell.

**Note**  With the removal of the Company Settings Center, the following group policies are no longer applicable:

-   Contact IT Link Text
-   Contact IT URL
-   Tray Icon


### Upgrading from UE-V 1.0 to the in-box version of UE-V is blocked

Version 1.0 of UE-V used Offline Files (Client Side Caching) for settings synchronization and pinned the UE-V sync folder to be available when the network was offline, however, this technology was removed in UE-V 2.x. As a result, UE-V 1.0 users are blocked from upgrading to UE-V for Windows 10, version 1607.

WORKAROUND: Remove the UE-V 1.0 sync folder from the Offline Files configuration and then upgrade to the in-box version of UE-V for Windows, version 1607 release.

### UE-V settings location templates for Skype cause Skype to crash

When a user generates a valid settings location template for the Skype desktop application, registers it, and then launches the Skype desktop application, Skype crashes. An ACCESS\_VIOLATION is recorded in the Application Event Log.

WORKAROUND: Remove or unregister the Skype template to allow Skype to work again.

### Registry settings do not synchronize between App-V and native applications on the same device

When a device has an application that is installed through both Application Virtualization (App-V) and locally with a Windows Installer (.msi) file, the registry-based settings do not synchronize between the technologies.

WORKAROUND: To resolve this problem, run the application by selecting one of the two technologies, but not both.

### Unpredictable results when both Office 2010 and Office 2013 are installed on the same device

When a user has both Office 2010 and Office 2013 installed, any common settings between the two versions of Office are roamed by UE-V. This could cause the Office 2010 package size to be quite large or result in unpredictable conflicts with 2013, particularly if Office 365 is used.

WORKAROUND: Install only one version of Office or limit which settings are synchronized by UE-V.

### Uninstall and re-install of Windows 8 applications reverts settings to initial state

While using UE-V settings synchronization for a Windows 8 application, if the user uninstalls the application and then reinstalls the application, the application’s settings revert to their default values. This happens because the uninstall removes the local (cached) copy of the application’s settings but does not remove the local UE-V settings package. When the application is reinstalled and launched, UE-V gather the application settings that were reset to the application defaults and then uploads the default settings to the central storage location. Other computers running the application then download the default settings. This behavior is identical to the behavior of desktop applications.

WORKAROUND: None.

### UE-V does not support roaming settings between 32-bit and 64-bit versions of Microsoft Office

We recommend that you install the 32-bit version of Microsoft Office for both 32-bit and 64-bit operating systems. To choose the Microsoft Office version that you need, click [here](<http://office.microsoft.com/word-help/choose-the-32-bit-or-64-bit-version-of-microsoft-office-HA010369476.aspx>). UE-V supports roaming settings between identical architecture versions of Office. For example, 32-bit Office settings will roam between all 32-bit Office instances. UE-V does not support roaming settings between 32-bit and 64-bit versions of Office.

WORKAROUND: None

### Favicons that are associated with Internet Explorer 9 favorites do not roam

The favicons that are associated with Internet Explorer 9 favorites are not roamed by User Experience Virtualization and do not appear when the favorites first appear on a new computer.

WORKAROUND: Favicons will appear with their associated favorites once the bookmark is used and cached in the Internet Explorer 9 browser.

### File settings paths are stored in registry

Some application settings store the paths of their configuration and settings files as values in the registry. The files that are referenced as paths in the registry must be synchronized when settings are roamed between computers.

WORKAROUND: Use folder redirection or some other technology to ensure that any files that are referenced as file settings paths are present and placed in the same location on all computers where settings roam.

### Long Settings Storage Paths could cause an error

Keep settings storage paths as short as possible. Long paths could prevent resolution or synchronization. UE-V uses the Settings storage path as part of the calculated path to store settings. That path is calculated in the following way: settings storage path + “settingspackages” + package dir (template ID) + package name (template ID) + .pkgx. If that calculated path exceeds 260 characters, package storage will fail and generate the following error message in the UE-V operational event log:

\[boost::filesystem::copy\_file: The system cannot find the path specified\]

To check the operational log events, open the Event Viewer and navigate to Applications and Services Logs / Microsoft / User Experience Virtualization / Logging / Operational.

WORKAROUND: None.

### Some operating system settings only roam between like operating system versions

Operating system settings for Narrator and currency characters specific to the locale (i.e. language and regional settings) will only roam across like operating system versions of Windows. For example, currency characters will not roam between Windows 7 and Windows 8.

WORKAROUND: None

## Hotfixes and Knowledge Base articles for UE-V

This section contains hotfixes and KB articles for UE-V.

| KB Article | Title   | Link   |
|------------|---------|--------|
| 3018608    | UE-V - TemplateConsole.exe crashes when UE-V WMI classes are missing           | [support.microsoft.com/kb/3018608](https://support.microsoft.com/kb/3018608) |
| 2903501    | UE-V: User Experience Virtualization (UE-V) compatibility with user profiles   | [support.microsoft.com/kb/2903501](https://support.microsoft.com/kb/2903501) |
| 2770042    | UE-V Registry Settings                                                         | [support.microsoft.com/kb/2770042](https://support.microsoft.com/kb/2770042) |
| 2847017    | Internet Explorer settings replicated by UE-V                                  | [support.microsoft.com/kb/2847017](https://support.microsoft.com/kb/2847017) |
| 2769631    | How to repair a corrupted UE-V install                                         | [support.microsoft.com/kb/2769631](https://support.microsoft.com/kb/2769631) |
| 2850989    | Migrating MAPI profiles with Microsoft UE-V is not supported                   | [support.microsoft.com/kb/2850989](https://support.microsoft.com/kb/2850989) |
| 2769586    | UE-V roams empty folders and registry keys                                     | [support.microsoft.com/kb/2769586](https://support.microsoft.com/kb/2769586) |
| 2782997    | How To Enable Debug Logging in Microsoft User Experience Virtualization (UE-V) | [support.microsoft.com/kb/2782997](https://support.microsoft.com/kb/2782997) |
| 2769570    | UE-V does not update the theme on RDS or VDI sessions                          | [support.microsoft.com/kb/2769570](https://support.microsoft.com/kb/2769570) |
| 2850582    | How To Use Microsoft User Experience Virtualization With App-V Applications    | [support.microsoft.com/kb/2850582](https://support.microsoft.com/kb/2850582) |
| 3041879    | Current file versions for Microsoft User Experience Virtualization             | [support.microsoft.com/kb/3041879](https://support.microsoft.com/kb/3041879) |
| 2843592    | Information on User Experience Virtualization and High Availability            | [support.microsoft.com/kb/2843592](https://support.microsoft.com/kb/2843592) |





**Additional resources for this feature**


-   [User Experience Virtualization](uev-for-windows.md)

-   [Prepare a UE-V Deployment](uev-prepare-for-deployment.md)

-   [Upgrade to UE-V for Windows 10](uev-upgrade-uev-from-previous-releases.md)

-   [Administering UE-V ](uev-administering-uev.md)

-   [Troubleshooting UE-V ](uev-troubleshooting.md)

-   [Technical Reference for UE-V](uev-technical-reference.md)
