---
title: Microsoft User Experience Virtualization (UE-V) 1.0 SP1 Release Notes
description: Microsoft User Experience Virtualization (UE-V) 1.0 SP1 Release Notes
author: levinec
ms.assetid: 447fae0c-fe87-4d1c-b616-6f92fbdaf6d5
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Microsoft User Experience Virtualization (UE-V) 1.0 SP1 Release Notes


To search Microsoft User Experience Virtualization (UE-V) 1.0 Service Pack 1 release notes, press Ctrl+F.

You should read these release notes thoroughly before you install UE-V. The release notes contain information that is required to successfully install User Experience Virtualization, and contain additional information that is not available in the product documentation. If there are differences between these release notes and other UE-V documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

## UE-V known issues


This section contains release notes for User Experience Virtualization 1.0 SP1.

### Registry settings fail to synchronize between App-V and native applications on the same computer

When a computer has an application that is available through both the Application Virtualization (App-V) application and a native installation application installed with a Windows Installer (.msi file), the registry-based settings do not synchronize between the technologies.

WORKAROUND: To resolve this problem, run the application by selecting one of the two technologies, but not both.

### <a href="" id="windows-8-setting-synchronization-fails-when-network-share-is-outside-user-s-domain"></a>Windows 8 setting synchronization fails when network share is outside user’s domain

When Windows® 8 attempts operating system settings synchronization, the synchrnization fails with the following error message: **boost::filesystem::exists::Incorrect user name or password**. This error can indicate that the network share is outside the user’s domain. To check for operational log events, open the **Event Viewer** and navigate to **Applications and Services Logs** / **Microsoft** / **User Experience Virtualization** / **Logging** / **Operational**. Network shares that are used for UE-V settings storage locations should reside in the same Active Directory domain as the user.

WORKAROUND: Use network shares from the same Active Directory domain as the user. .

### Email signature roaming for Outlook 2010

UE-V will roam the Outlook 2010 signature files between devices. However, the default signature options for new messages and replies/forwards are not roamed. These two settings are stored in the Outlook profile, which UE-V does not roam.

WORKAROUND: None.

### Synchronization settings do not synchronize on expected interval when running in slow-link mode

Under normal conditions, settings storage locations should be available over a fast link network connection. In slow-link mode, synchronization will only occur on a periodic basis. By default, the slow-link mode synchronization schedule is set to every 360 minutes.

WORKAROUND: To change the frequency of the background synchronization for computers in slow-link mode, you can configure the Group Policy for Background Sync policy for **Offline files**.

### Special characters do not synchronize

Certain characters, such as currency symbols, do not synchronize between Windows 7 and Windows 8 computers that run the UE-V agent.

WORKAROUND: None.

### UE-V does not support roaming settings between 32-bit and 64-bit versions of Microsoft Office

We recommend that you install the 32-bit version of Microsoft Office for both 32-bit and 64-bit operating systems. To choose the Microsoft Office version that you need, click here ([http://office.microsoft.com/word-help/choose-the-32-bit-or-64-bit-version-of-microsoft-office-HA010369476.aspx](https://go.microsoft.com/fwlink/?LinkID=247623)). UE-V supports roaming settings between identical architecture versions of Office. For example, 32-bit Office settings will roam between all 32-bit Office instances. UE-V does not support roaming settings between 32-bit and 64-bit versions of Office.

WORKAROUND: None

### <a href="" id="msi-s-are-not-localized"></a>MSI’s are not localized

UE-V 1.0 SP1 includes a localized setup program for both the UE-V Agent and UE-V generator. These MSI files are still available but the user interface is minimized and the MSI’s only display in English. Despite the file being in English, the setup program installs all supported languages during the installation.

WORKAROUND: None

### Other folders on the share with the setting storage location are unavailable in slow-connection mode

Settings store shares should not be located on a network share that is used for other folders that must always be available. When the network share that hosts the setting storage location goes into slow-connection mode, the only available folder is the settings storage location folder. Other folders on the Share are not available in slow-connection mode.

Workaround: None

### Favicons that are associated with Internet Explorer 9 favorites do not roam

The favicons that are associated with Internet Explorer 9 favorites are not roamed by User Experience Virtualization and do not appear when the favorites first appear on a new computer.

WORKAROUND: Favicons will appear with their associated favorites once the bookmark is used and cached in the Internet Explorer 9 browser.

### File settings paths are stored in registry

Some application settings store the paths of their configuration and settings files as values in the registry. The files that are referenced as paths in the registry must be synchronized when settings are roamed between computers.

WORKAROUND: Use folder redirection or some other technology to ensure that any files that are referenced as file settings paths are present and placed in the same location on all computers where settings roam.

### Long Settings Storage Paths could cause an error

Keep settings storage paths as short as possible. Long paths could prevent resolution or synchronization. UE-V uses the Settings storage path as part of the calculated path to store settings. That path is calculated in the following way: settings storage path + “settingspackages” + package dir (template ID) + package name (template ID). If that calculated path exceeds 260 characters, package storage will fail and generate the following error message in the UE-V operational event log:

`[boost::filesystem::copy_file: The system cannot find the path specified]`

To check the operational log events, open the Event Viewer and navigate to Applications and Services Logs / Microsoft / User Experience Virtualization / Logging / Operational.

WORKAROUND: None.

### UE-V agent delays upon logout or login

If a logon or logout occurs before Offline Files has determined that a slow link is in place, logout or login might be delayed. The Offline Files feature may take up to three minutes to detect the current network state. If the logon or shutdown occurs before Offline Files has determined that the computer is connected to a slow link, the UE-V settings package will be sent to the server instead of the local cache.

WORKAROUND: None.

### Settings conflict when trying to roam operating system settings on Windows 8

On Windows 8 if Microsoft Account Sync is enabled along with UE-V for operating system settings, the settings that are applied may be inconsistent.

WORKAROUND: Do one of the following:

-   Disable Microsoft Account Sync if you are using UE-V to roam operating system settings

-   Disable UE-V for operating system settings

### Some operating system settings only roam between like operating system versions

Operating system settings for Narrator and currency characters specific to the locale will only roam across like operating system versions of Windows. For example currency characters will only roam from Windows 7 to Windows 7.

WORKAROUND: None

 

 





