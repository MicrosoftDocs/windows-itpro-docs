---
title: Use the AppLocker Windows PowerShell cmdlets (Windows 10)
description: This topic for IT professionals describes how each AppLocker Windows PowerShell cmdlet can help you administer your AppLocker application control policies.
ms.assetid: 374e029c-5c0a-44ab-a57a-2a9dd17dc57d
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Use the AppLocker Windows PowerShell cmdlets

**Applies to**
 -   Windows 10
 -   Windows Server

This topic for IT professionals describes how each AppLocker Windows PowerShell cmdlet can help you administer your AppLocker application control policies.

## AppLocker Windows PowerShell cmdlets

The five AppLocker cmdlets are designed to streamline the administration of an AppLocker policy. They can be used to help create, test, maintain, and troubleshoot an AppLocker policy. The cmdlets are intended to be used in conjunction with the AppLocker user interface that is accessed through the
Microsoft Management Console (MMC) snap-in extension to the Local Security Policy snap-in and Group Policy Management Console.

To edit or update a Group Policy Object (GPO) by using the AppLocker cmdlets, you must have Edit Setting permission. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission. To perform tasks by using the
Local Security policy snap-in, you must be a member of the local **Administrators** group, or equivalent, on the computer.

### Retrieve application information

The [Get-AppLockerFileInformation](https://technet.microsoft.com/library/hh847209.aspx) cmdlet retrieves the AppLocker file information from a list of files or from an event log. File information that is retrieved can include publisher information, file hash information, and file path information.

File information from an event log may not contain all of these fields. Files that are not signed do not have any publisher information.

### Set AppLocker policy

The [Set-AppLockerPolicy](https://technet.microsoft.com/library/hh847212.aspx) cmdlet sets the specified GPO to contain the specified AppLocker policy. If no Lightweight Directory Access Protocol (LDAP) is specified, the local GPO is the default.

### Retrieve an AppLocker policy

The [Get-AppLockerPolicy](https://technet.microsoft.com/library/hh847214.aspx) cmdlet gets the AppLocker policy from the local GPO, from a specified GPO, or from the effective AppLocker policy on the device. The output of the AppLocker policy is an AppLockerPolicy object or an XML-formatted string.

### Generate rules for a given user or group

The [New-AppLockerPolicy](https://technet.microsoft.com/library/hh847211.aspx) cmdlet uses a list of file information to automatically generate rules for a given user or group. It can generate rules based on publisher, hash, or path information. Use **Get-AppLockerFileInformation** to create the
list of file information.

### Test the AppLocker Policy against a file set

The [Test-AppLockerPolicy](https://technet.microsoft.com/library/hh847213.aspx) cmdlet uses the specified AppLocker policy to test whether a specified list of files are allowed to run or not on the local device for a specific user.

## Additional resources

-   For steps to perform other AppLocker policy tasks, see [Administer AppLocker](administer-applocker.md).
