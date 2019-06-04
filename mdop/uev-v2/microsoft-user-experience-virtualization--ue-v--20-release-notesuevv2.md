---
title: Microsoft User Experience Virtualization (UE-V) 2.0 Release Notes
description: Microsoft User Experience Virtualization (UE-V) 2.0 Release Notes
author: levinec
ms.assetid: 5ef66cd1-ba2b-4383-9f45-e7cde41f1ba1
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Microsoft User Experience Virtualization (UE-V) 2.0 Release Notes


To search Microsoft User Experience Virtualization (UE-V) 2.0 release notes, press Ctrl+F.

You should read these release notes thoroughly before you install UE-V. The release notes contain information that is required to successfully install User Experience Virtualization, and contain additional information that is not available in the product documentation. If there are differences between these release notes and other UE-V documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

## Providing feedback


Tell us what you think about our documentation for MDOP by giving us your feedback and comments. Send your documentation feedback to [mdopdocs@microsoft.com](mailto:mdopdocs@microsoft.com?subject=UE-V%20Documentation).

## UE-V known issues


This section contains release notes for User Experience Virtualization.

### Registry settings do not synchronize between App-V and native applications on the same computer

When a computer has an application that is installed through both Application Virtualization (App-V) and a locally with a Windows Installer (.msi) file, the registry-based settings do not synchronize between the technologies.

**WORKAROUND:** To resolve this problem, run the application by selecting one of the two technologies, but not both.

### <a href="" id="settings-do-not-synchronization-when-network-share-is-outside-user-s-domain"></a>Settings do not synchronization when network share is outside user’s domain

When Windows® 8 attempts operating system settings synchronization, the synchronization fails with the following error message: **boost::filesystem::exists::Incorrect user name or password**. This error can indicate that the network share is outside the user’s domain or a domain with a trust relationship to that domain. To check for operational log events, open the **Event Viewer** and navigate to **Applications and Services Logs** / **Microsoft** / **User Experience Virtualization** / **Logging** / **Operational**. Network shares that are used for UE-V settings storage locations should reside in the same Active Directory domain as the user or a trusted domain of the user’s domain.

**WORKAROUND:** Use network shares from the same Active Directory domain as the user.

### Unpredictable results with both Office 2010 and Office 2013 installed

When a user has both Office 2010 and Office 2013 installed, any common settings between the two versions of Office are roamed by UE-V. This could cause the Office 2010 package size to be quite large or result in unpredictable conflicts with 2013, particularly if Office 365 is used.

**WORKAROUND:** Install only one version of Office or limit which settings are synchronized by UE-V.

### Uninstall and re-install of Windows 8 app reverts settings to initial state

While using UE-V settings synchronization for a Windows 8 app, if the user uninstalls the app and then reinstalls the app, the app’s settings revert to their default values.  This happens because the uninstall removes the local (cached) copy of the app’s settings but does not remove the local UE-V settings package.  When the app is reinstalled and launched, UE-V gather the app settings that were reset to the app defaults and then uploads the default settings to the central storage location.  Other computers running the app then download the default settings.  This behavior is identical to the behavior of desktop applications.

**WORKAROUND:** None.

### Email signature roaming for Outlook 2010

UE-V will roam the Outlook 2010 signature files between devices. However, the default signature options for new messages and replies or forwards are not synchronized. These two settings are stored in the Outlook profile, which UE-V does not roam.

**WORKAROUND:** None.

### UE-V does not support roaming settings between 32-bit and 64-bit versions of Microsoft Office

We recommend that you install the 64-bit version of Microsoft Office for modern computers. To determine which version you need, [click here](https://support.office.com/article/choose-between-the-64-bit-or-32-bit-version-of-office-2dee7807-8f95-4d0c-b5fe-6c6f49b8d261?ui=en-US&rs=en-US&ad=US#32or64Bit=Newer_Versions). UE-V supports roaming settings between identical architecture versions of Office. For example, 32-bit Office settings will roam between all 32-bit Office instances. UE-V does not support roaming settings between 32-bit and 64-bit versions of Office.

**WORKAROUND:** None

### <a href="" id="msi-s-are-not-localized"></a>MSI’s are not localized

UE-V 2.0 includes a localized setup program for both the UE-V Agent and UE-V generator. These MSI files are still available but the user interface is minimized and the MSI’s only display in English. Despite the file being in English, the setup program installs all supported languages during the installation.

**WORKAROUND:** None

### Favicons that are associated with Internet Explorer 9 favorites do not roam

The favicons that are associated with Internet Explorer 9 favorites are not roamed by User Experience Virtualization and do not appear when the favorites first appear on a new computer.

**WORKAROUND:** Favicons will appear with their associated favorites once the bookmark is used and cached in the Internet Explorer 9 browser.

### File settings paths are stored in registry

Some application settings store the paths of their configuration and settings files as values in the registry. The files that are referenced as paths in the registry must be synchronized when settings are roamed between computers.

**WORKAROUND:** Use folder redirection or some other technology to ensure that any files that are referenced as file settings paths are present and placed in the same location on all computers where settings roam.

### Long Settings Storage Paths could cause an error

Keep settings storage paths as short as possible. Long paths could prevent resolution or synchronization. UE-V uses the Settings storage path as part of the calculated path to store settings. That path is calculated in the following way: settings storage path + “settingspackages” + package dir (template ID) + package name (template ID) + .pkgx. If that calculated path exceeds 260 characters, package storage will fail and generate the following error message in the UE-V operational event log:

`[boost::filesystem::copy_file: The system cannot find the path specified]`

To check the operational log events, open the Event Viewer and navigate to Applications and Services Logs / Microsoft / User Experience Virtualization / Logging / Operational.

**WORKAROUND:** None.

### Some operating system settings only roam between like operating system versions

Operating system settings for Narrator and currency characters specific to the locale (i.e. language and regional settings) will only roam across like operating system versions of Windows. For example, currency characters will not roam between Windows 7 and Windows 8.

**WORKAROUND:** None

### Windows 8 apps do not sync settings when the app restarts after closing unexpectedly

If a Windows 8 app closes unexpectedly soon after startup, settings for the application may not be synchronized when the application is restarted.

**WORKAROUND:** Close the Windows 8 app, close and restart the UevAppMonitor.exe application (can use TaskManager), and then restart the Windows 8 app.

### <a href="" id="ue-v-1-agent-generates-errors-when-running-ue-v-2-templates-"></a>UE-V 1 agent generates errors when running UE-V 2 templates

If a UE-V 2 settings location template is distributed to a computer installed with a UE-V 1 agent, some settings fail to synchronize between computers and the agent reports errors in the event log.

**WORKAROUND:** When migrating from UE-V 1 to UE-V 2 and it is likely you’ll have computers running the previous version of the agent, create a separate UE-V 2.0 catalog to support the UE-V 2.0 Agent and templates.

## Hotfixes and Knowledge Base articles for UE-V 2.0


This section contains hotfixes and KB articles for UE-V 2.0.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>KB Article</strong></th>
<th align="left">Title</th>
<th align="left"><strong>Link</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>2927019</p></td>
<td align="left"><p>Hotfix Package 1 for Microsoft User Experience Virtualization 2.0</p></td>
<td align="left"><p>[support.microsoft.com/kb/2927019](https://support.microsoft.com/kb/2927019)</p></td>
</tr>
<tr class="even">
<td align="left"><p>2903501</p></td>
<td align="left"><p>UE-V: User Experience Virtualization (UE-V) compatibility with user profiles</p></td>
<td align="left"><p>[support.microsoft.com/kb/2903501/EN-US](https://support.microsoft.com/kb/2903501/EN-US)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2770042</p></td>
<td align="left"><p>UE-V Registry Settings</p></td>
<td align="left"><p>[support.microsoft.com/kb/2770042/EN-US](https://support.microsoft.com/kb/2770042/EN-US)</p></td>
</tr>
<tr class="even">
<td align="left"><p>2847017</p></td>
<td align="left"><p>UE-V settings replicated by Internet Explorer</p></td>
<td align="left"><p>[support.microsoft.com/kb/2847017/EN-US](https://support.microsoft.com/kb/2847017/EN-US)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2930271</p></td>
<td align="left"><p>Understanding the limitations of roaming Outlook signatures in Microsoft UE-V</p></td>
<td align="left"><p>[support.microsoft.com/kb/2930271/EN-US](https://support.microsoft.com/kb/2930271/EN-US)</p></td>
</tr>
<tr class="even">
<td align="left"><p>2769631</p></td>
<td align="left"><p>How to repair a corrupted UE-V install</p></td>
<td align="left"><p>[support.microsoft.com/kb/2769631/EN-US](https://support.microsoft.com/kb/2769631/EN-US)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2850989</p></td>
<td align="left"><p>Migrating MAPI profiles with Microsoft UE-V is not supported</p></td>
<td align="left"><p>[support.microsoft.com/kb/2850989/EN-US](https://support.microsoft.com/kb/2850989/EN-US)</p></td>
</tr>
<tr class="even">
<td align="left"><p>2769586</p></td>
<td align="left"><p>UE-V roams empty folders and registry keys</p></td>
<td align="left"><p>[support.microsoft.com/kb/2769586/EN-US](https://support.microsoft.com/kb/2769586/EN-US)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2782997</p></td>
<td align="left"><p>How To Enable Debug Logging in Microsoft User Experience Virtualization (UE-V)</p></td>
<td align="left"><p>[support.microsoft.com/kb/2782997/EN-US](https://support.microsoft.com/kb/2782997/EN-US)</p></td>
</tr>
<tr class="even">
<td align="left"><p>2769570</p></td>
<td align="left"><p>UE-V does not update the theme on RDS or VDI sessions</p></td>
<td align="left"><p>[support.microsoft.com/kb/2769570/EN-US](https://support.microsoft.com/kb/2769570/EN-US)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2901856</p></td>
<td align="left"><p>Application settings do not sync after you force a restart on a UE-V-enabled computer</p></td>
<td align="left"><p>[support.microsoft.com/kb/2901856/EN-US](https://support.microsoft.com/kb/2901856/EN-US)</p></td>
</tr>
<tr class="even">
<td align="left"><p>2850582</p></td>
<td align="left"><p>How To Use Microsoft User Experience Virtualization With App-V Applications</p></td>
<td align="left"><p>[support.microsoft.com/kb/2850582/EN-US](https://support.microsoft.com/kb/2850582/EN-US)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>3041879</p></td>
<td align="left"><p>Current file versions for Microsoft User Experience Virtualization</p></td>
<td align="left"><p>[support.microsoft.com/kb/3041879/EN-US](https://support.microsoft.com/kb/3041879/EN-US)</p></td>
</tr>
<tr class="even">
<td align="left"><p>2843592</p></td>
<td align="left"><p>Information on User Experience Virtualization and High Availability</p></td>
<td align="left"><p>[support.microsoft.com/kb/2843592/EN-US](https://support.microsoft.com/kb/2843592/EN-US)</p></td>
</tr>
</tbody>
</table>

 

 

 





