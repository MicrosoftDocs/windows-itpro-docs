---
title: User Account Control (Windows 10)
description: User Account Control (UAC) helps prevent malware from damaging a PC and helps organizations deploy a better-managed desktop.
ms.assetid: 43ac4926-076f-4df2-84af-471ee7d20c38
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: operate
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# User Account Control

**Applies to**
- Windows 10
- Windows Server 2016

User Account Control (UAC) helps prevent malware from damaging a PC and helps organizations deploy a better-managed desktop. With UAC, apps and tasks always run in the security context of a non-administrator account, unless an administrator specifically authorizes administrator-level access to the system. UAC can block the automatic installation of unauthorized apps and prevent inadvertent changes to system settings.

UAC allows all users to log on to their computers using a standard user account. Processes launched using a standard user token may perform tasks using access rights granted to a standard user. For instance, Windows Explorer automatically inherits standard user level permissions. Additionally, any apps that are started using Windows Explorer (for example, by double-clicking a shortcut) also run with the standard set of user permissions. Many apps, including those that are included with the operating system itself, are designed to work properly in this way.

Other apps, especially those that were not specifically designed with security settings in mind, often require additional permissions to run successfully. These types of apps are referred to as legacy apps. Additionally, actions such as installing new software and making configuration changes to the Windows Firewall, require more permissions than what is available to a standard user account.

When an app needs to run with more than standard user rights, UAC can restore additional user groups to the token. This enables the user to have explicit control of apps that are making system level changes to their computer or device.

## Practical applications

Admin Approval Mode in UAC helps prevent malware from silently installing without an administrator's knowledge. It also helps protect from inadvertent system-wide changes. Lastly, it can be used to enforce a higher level of compliance where administrators must actively consent or provide credentials for each administrative process.


## In this section
| Topic | Description |
| - | - |
| [How User Account Control works](how-user-account-control-works.md) | User Account Control (UAC) is a fundamental component of Microsoft's overall security vision. UAC helps mitigate the impact of malware. |
| [User Account Control security policy settings](user-account-control-security-policy-settings.md) | You can use security policies to configure how User Account Control works in your organization. They can be configured locally by using the Local Security Policy snap-in (secpol.msc) or configured for the domain, OU, or specific groups by Group Policy. |
| [User Account Control Group Policy and registry key settings](user-account-control-group-policy-and-registry-key-settings.md) | Here's a list of UAC  Group Policy and registry key settings that your organization can use to manage UAC. |
 
 
 
