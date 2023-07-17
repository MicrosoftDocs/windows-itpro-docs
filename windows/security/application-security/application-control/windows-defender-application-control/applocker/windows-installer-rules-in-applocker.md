---
title: Windows Installer rules in AppLocker
description: This topic describes the file formats and available default rules for the Windows Installer rule collection.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/21/2017
---

# Windows Installer rules in AppLocker

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic describes the file formats and available default rules for the Windows Installer rule collection.

AppLocker defines Windows Installer rules to include only the following file formats:

-   .msi
-   .msp
-   .mst

The purpose of this collection is to allow you to control the installation of files on client computers and servers through Group Policy or the Local Security Policy snap-in. The following table lists the default rules that are available for the Windows Installer rule collection.

| Purpose | Name | User | Rule condition type |
| - | - | - | - |
| Allow members of the local Administrators group to run all Windows Installer files| (Default Rule) All Windows Installer files| BUILTIN\Administrators| Path: *| 
| Allow all users to run Windows Installer files that are digitally signed | (Default Rule) All digitally signed Windows Installer files| Everyone| Publisher: * (all signed files)| 
| Allow all users to run Windows Installer files that are located in the Windows Installer folder | (Default Rule) All Windows Installer files in %systemdrive%\Windows\Installer| Everyone| Path: %windir%\Installer\*| 
 
## Related topics

- [Understanding AppLocker default rules](understanding-applocker-default-rules.md)
