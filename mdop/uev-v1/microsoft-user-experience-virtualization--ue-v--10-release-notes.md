---
title: Microsoft User Experience Virtualization (UE-V) 1.0 Release Notes
description: Microsoft User Experience Virtualization (UE-V) 1.0 Release Notes
author: levinec
ms.assetid: 920f3fae-e9b5-4b94-beda-32c19d31e94b
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Microsoft User Experience Virtualization (UE-V) 1.0 Release Notes


To search Microsoft User Experience Virtualization (UE-V) release notes, press Ctrl+F.

You should read these release notes thoroughly before you install UE-V. The release notes contain information that is required to successfully install User Experience Virtualization, and contain additional information that is not available in the product documentation. If there are differences between these release notes and other UE-V documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

## Providing feedback


Tell us what you think about our documentation for MDOP by giving us your feedback and comments. Send your documentation feedback to [mdopdocs@microsoft.com](mailto:mdopdocs@microsoft.com?subject=UE-V%20Documentation).

## UE-V known issues


This section contains release notes for User Experience Virtualization.

### Registry settings fail to synchronize between App-V and native applications on the same computer

When a computer has an application that is available through both the Application Virtualization (App-V) application and a native installation application (installed with an .msi file), the registry-based settings do not synchronize between the technologies.

WORKAROUND: To resolve this problem, run the application by selecting one of the two technologies, but not both.

### Windows 8 setting synchronization fails with error: "boost::filesystem::exists::Incorrect user name or password"

The Windows® 8 operating system settings synchronization fails with the following error message: **boost::filesystem::exists::Incorrect user name or password**. To check for operational log events, open the **Event Viewer** and navigate to **Applications and Services Logs** / **Microsoft** / **User Experience Virtualization** / **Logging** / **Operational**. Network shares that are used for UE-V settings storage locations should reside in the same Active Directory domain as the user. Otherwise, the following error might occur: "Incorrect user name or password".

WORKAROUND: Use network shares from the same Active Directory domain as the user. .

### Email signature roaming for Outlook 2010

UE-V will roam the Outlook 2010 signature files between devices. However, the default signature options for new messages and replies/forwards are not.  These two settings are stored in the Outlook profile, which UE-Vdoes not roam.

WORKAROUND: None.

### Synchronization settings do not synchronize on expected interval when running in slow-link mode

Under normal conditions, settings storage locations should be available over a fast link network connection. In slow-link mode, synchronization will only occur on a periodic basis. By default, the slow-link mode synchronization schedule is set to every 360 minutes.

WORKAROUND: To change the frequency of the background synchronization for computers in slow-link mode, you can configure the Group Policy for Background Sync policy for **Offline files**.

### Special characters do not synchronize

Certain characters, such as currency symbols, do not synchronize between Windows 7 and Windows 8 computers that run the UE-V agent.

WORKAROUND: None.

### UE-V does not support roaming settings between 32-bit and 64-bit versions of Microsoft Office

We recommend that you install the 32-bit version of Microsoft Office for both 32-bit and 64-bit operating systems. To choose the Microsoft Office version that you need, click here. ([http://office.microsoft.com/word-help/choose-the-32-bit-or-64-bit-version-of-microsoft-office-HA010369476.aspx](https://go.microsoft.com/fwlink/?LinkID=247623)). UE-V supports roaming settings between identical architecture versions of Office. For example, 32-bit Office settings will roam between all 32-bit Office instances. UE-V does not support roaming settings between 32-bit and 64-bit versions of Office.

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

### Paths longer than 260 characters are not supported

Settings storage paths that are longer than 260 characters are not supported. Copying the UE-V settings packages to settings storage paths that are longer than 260 characters will fail and generate the following exception message in the UE-V operational event log: **\[boost::filesystem::copy\_file: The system cannot find the path specified\]**. To check for operational log events, open the **Event Viewer** and navigate to **Applications and Services Logs** / **Microsoft** / **User Experience Virtualization** / **Logging** / **Operational**.

File settings paths that are longer than 260 characters are not currently supported. File settings that are referenced in UE-V settings location templates cannot be located in a directory path that is longer than 260 characters.

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

### Internet Explorer bookmarks do not appear in the Internet Explorer smartbar

When Internet Explorer bookmarks roam from one computer to another computer, the index on the second computer cannot update, so when typing in the address bar, the favorite will not appear as a possible search result on computer 2.

WORKAROUND: None

 

 





