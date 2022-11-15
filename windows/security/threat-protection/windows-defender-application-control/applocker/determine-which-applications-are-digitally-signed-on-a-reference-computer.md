---
title: Find digitally signed apps on a reference device (Windows)
description: This topic for the IT professional describes how to use AppLocker logs and tools to determine which applications are digitally signed.
ms.assetid: 24609a6b-fdcb-4083-b234-73e23ff8bcb8
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Determine which apps are digitally signed on a reference device

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for the IT professional describes how to use AppLocker logs and tools to determine which applications are digitally signed.

The Windows PowerShell cmdlet **Get-AppLockerFileInformation** can be used to determine which apps installed on your reference devices are digitally signed. Perform the following steps on each reference computer that you used to define the AppLocker policy. The device doesn't need to be joined to the domain.

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

**To determine which apps are digitally signed on a reference device**
1.  Run **Get-AppLockerFileInformation** with the appropriate parameters.

    The **Get-AppLockerFileInformation** cmdlet retrieves the AppLocker file information from a list of files or from an event log. File information that is retrieved can include publisher information, file hash information, and file path information. File information from an event log may not contain all of these fields. Files that aren't signed don't have any publisher information.

2.  Analyze the publisher's name and digital signature status from the output of the command.

For command parameters, syntax, and examples, see [Get-AppLockerFileInformation](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee460961(v=technet.10)).

## Related topics

- [Use a reference device to create and maintain AppLocker policies](use-a-reference-computer-to-create-and-maintain-applocker-policies.md)
 
 