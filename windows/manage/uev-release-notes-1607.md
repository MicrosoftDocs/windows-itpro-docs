---
title: User Experience Virtualization (UE-V) Release Notes
description:User Experience Virtualization (UE-V) Release Notes
author: jamiejdt
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# User Experience Virtualization (UE-V) Release Notes

Applies to: Windows 10, version 1607

This topic includes information required to successfully install and use UE-V that is not included in the User Experience Virtualization (UE-V) documentation. If there are differences between the information in this topic and other UE-V topics, the latest change should be considered authoritative.

### Upgrading from UE-V 1.0 to the Windows 10, version 1607 in-box version of UE-V is blocked

Version 1.0 of UE-V includes client-side caching technology used to pin the UE-V sync folder, however, this technology was removed in UE-V 2.x. As a result, UE-V 1.0 users are blocked from upgrading to UE-V for Windows 10, version 1607.

WORKAROUND: Unpin the UE-V 1.0 client-side caching sync folder and then upgrade to the in-box version included in UE-V for Windows, version 1607 release.

### UE-V settings location templates for Skype cause Skype to crash

When a user generates a valid settings location template for the Skype desktop application, registers it, and then launches the Skype desktop application, Skype crashes. An ACCESS\_VIOLATION is recorded in the Application Event Log.

WORKAROUND: Remove or unregister the Skype template to allow Skype to work again.

### Existing scripts for silent installations of UE-V may fail

Two changes made to the UE-V installer can cause silent installation scripts that worked for previous versions of UE-V to fail when installing UE-V 2.1 SP1. The first is a new requirement that users must accept the license terms and agree to or decline participation in the Customer Experience Improvement Program (CEIP), even during a silent installation. Using the /q parameter is no longer sufficient to indicate acceptance of the license terms and agreement to participate in CEIP.

Second, the installer now forces a computer restart after installing the UE-V Agent. This can cause an install script to fail if it is not expecting the restart (for example, it installs the UE-V Agent first and then immediately installs the generator).

WORKAROUND: The UE-V installer (.msi) has two new command-line parameters that support silent installations.

| Parameter     | Description  |
|---------------|--------------|
| /ACCEPTLICENSETERMS=True | Set this parameter to **True** to install UE-V silently. Adding this parameter implies that the user accepts the UE-V license terms, which are found (by default) here: %ProgramFiles%\\Microsoft User Experience Virtualization\\Agent |
| /NORESTART               | This parameter prevents the mandatory restart after the UE-V agent is installed. A return code of 3010 indicates that a restart is required prior to using UE-V.  |

### Registry settings do not synchronize between App-V and native applications on the same computer

When a computer has an application that is installed through both Application Virtualization (App-V) and locally with a Windows Installer (.msi) file, the registry-based settings do not synchronize between the technologies.

WORKAROUND: To resolve this problem, run the application by selecting one of the two technologies, but not both.

### Unpredictable results with both Office 2010 and Office 2013 installed

When a user has both Office 2010 and Office 2013 installed, any common settings between the two versions of Office are roamed by UE-V. This could cause the Office 2010 package size to be quite large or result in unpredictable conflicts with 2013, particularly if Office 365 is used.

WORKAROUND: Install only one version of Office or limit which settings are synchronized by UE-V.

### Uninstall and re-install of Windows 8 app reverts settings to initial state

While using UE-V settings synchronization for a Windows 8 app, if the user uninstalls the app and then reinstalls the app, the app’s settings revert to their default values. This happens because the uninstall removes the local (cached) copy of the app’s settings but does not remove the local UE-V settings package. When the app is reinstalled and launched, UE-V gather the app settings that were reset to the app defaults and then uploads the default settings to the central storage location. Other computers running the app then download the default settings. This behavior is identical to the behavior of desktop applications.

WORKAROUND: None.

### UE-V does not support roaming settings between 32-bit and 64-bit versions of Microsoft Office

We recommend that you install the 32-bit version of Microsoft Office for both 32-bit and 64-bit operating systems. To choose the Microsoft Office version that you need, click here. (<http://office.microsoft.com/word-help/choose-the-32-bit-or-64-bit-version-of-microsoft-office-HA010369476.aspx>). UE-V supports roaming settings between identical architecture versions of Office. For example, 32-bit Office settings will roam between all 32-bit Office instances. UE-V does not support roaming settings between 32-bit and 64-bit versions of Office.

WORKAROUND: None

### MSI’s are not localized

UE-V includes a localized setup program for both the UE-V Agent and UE-V template generator. These MSI files are still available but the user interface is minimized and the MSI’s only display in English. Despite the file being in English, the setup program installs all supported languages during the installation.

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

### UE-V 1 agent generates errors when running UE-V 2 templates

If a UE-V 2 settings location template is distributed to a computer installed with a UE-V 1 agent, some settings fail to synchronize between computers and the agent reports errors in the event log.

WORKAROUND: When migrating from UE-V 1 to UE-V 2 and it is likely you’ll have computers running the previous version of the agent, create a separate UE-V 2.x catalog to support the UE-V 2.x Agent and templates.

## Hotfixes and Knowledge Base articles for UE-V 2.1 SP1

This section contains hotfixes and KB articles for UE-V 2.1 SP1.

| KB Article | Title   | Link   |
|------------|---------|--------|
| 3018608    | UE-V 2.1 - TemplateConsole.exe crashes when UE-V WMI classes are missing       | [support.microsoft.com/kb/3018608/EN-US](http://support.microsoft.com/kb/3018608/EN-US) |
| 2903501    | UE-V: User Experience Virtualization (UE-V) compatibility with user profiles   | [support.microsoft.com/kb/2903501/EN-US](http://support.microsoft.com/kb/2903501/EN-US) |
| 2770042    | UE-V Registry Settings                                                         | [support.microsoft.com/kb/2770042/EN-US](http://support.microsoft.com/kb/2770042/EN-US) |
| 2847017    | UE-V settings replicated by Internet Explorer                                  | [support.microsoft.com/kb/2847017/EN-US](http://support.microsoft.com/kb/2847017/EN-US) |
| 2769631    | How to repair a corrupted UE-V install                                         | [support.microsoft.com/kb/2769631/EN-US](http://support.microsoft.com/kb/2769631/EN-US) |
| 2850989    | Migrating MAPI profiles with Microsoft UE-V is not supported                   | [support.microsoft.com/kb/2850989/EN-US](http://support.microsoft.com/kb/2850989/EN-US) |
| 2769586    | UE-V roams empty folders and registry keys                                     | [support.microsoft.com/kb/2769586/EN-US](http://support.microsoft.com/kb/2769586/EN-US) |
| 2782997    | How To Enable Debug Logging in Microsoft User Experience Virtualization (UE-V) | [support.microsoft.com/kb/2782997/EN-US](http://support.microsoft.com/kb/2782997/EN-US) |
| 2769570    | UE-V does not update the theme on RDS or VDI sessions                          | [support.microsoft.com/kb/2769570/EN-US](http://support.microsoft.com/kb/2769570/EN-US) |
| 2850582    | How To Use Microsoft User Experience Virtualization With App-V Applications    | [support.microsoft.com/kb/2850582/EN-US](http://support.microsoft.com/kb/2850582/EN-US) |
| 3041879    | Current file versions for Microsoft User Experience Virtualization             | [support.microsoft.com/kb/3041879/EN-US](http://support.microsoft.com/kb/3041879/EN-US) |
| 2843592    | Information on User Experience Virtualization and High Availability            | [support.microsoft.com/kb/2843592/EN-US](http://support.microsoft.com/kb/2843592/EN-US) |

## Have a suggestion for UE-V?

Add or vote on suggestions [here](http://uev.uservoice.com/forums/280428-microsoft-user-experience-virtualization). For UE-V issues, use the [UE-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-us/home?forum=mdopuev&filter=alltypes&sort=lastpostdesc).
