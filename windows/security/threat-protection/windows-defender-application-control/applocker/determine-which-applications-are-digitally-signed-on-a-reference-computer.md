---
title: Determine which apps are digitally signed on a reference device (Windows 10)
description: This topic for the IT professional describes how to use AppLocker logs and tools to determine which applications are digitally signed.
ms.assetid: 24609a6b-fdcb-4083-b234-73e23ff8bcb8
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
ms.date: 09/21/2017
---

# Determine which apps are digitally signed on a reference device

**Applies to**
 -   Windows 10
 -   Windows Server

This topic for the IT professional describes how to use AppLocker logs and tools to determine which applications are digitally signed.

The Windows PowerShell cmdlet **Get-AppLockerFileInformation** can be used to determine which apps installed on your reference devices are digitally signed. Perform the following steps on each reference computer that you used to define the AppLocker policy. The device does not need to be joined to the domain.

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

**To determine which apps are digitally signed on a reference device**
1.  Run **Get-AppLockerFileInformation** with the appropriate parameters.

    The **Get-AppLockerFileInformation** cmdlet retrieves the AppLocker file information from a list of files or from an event log. File information that is retrieved can include publisher information, file hash information, and file path information. File information from an event log may not contain all of these fields. Files that are not signed do not have any publisher information.

2.  Analyze the publisher's name and digital signature status from the output of the command.

For command parameters, syntax, and examples, see [Get-AppLockerFileInformation](https://technet.microsoft.com/library/ee460961.aspx).

## Related topics

- [Use a reference device to create and maintain AppLocker policies](use-a-reference-computer-to-create-and-maintain-applocker-policies.md)
 
 
