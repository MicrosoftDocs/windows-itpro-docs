---
title: User Account Control (Windows 10)
description: User Account Control (UAC) helps prevent malware from damaging a PC and helps organizations deploy a better-managed desktop.
ms.assetid: 43ac4926-076f-4df2-84af-471ee7d20c38
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: brianlic-msft
---

# User Account Control


**Applies to**

-   Windows 10

User Account Control (UAC) helps prevent malware from damaging a PC and helps organizations deploy a better-managed desktop. With UAC, apps and tasks always run in the security context of a non-administrator account, unless an administrator specifically authorizes administrator-level access to the system. UAC can block the automatic installation of unauthorized apps and prevent inadvertent changes to system settings.

## <a href="" id="bkmk-over"></a>


UAC allows all users to log on to their computers using a standard user account. Processes launched using a standard user token may perform tasks using access rights granted to a standard user. For instance, Windows Explorer automatically inherits standard user level permissions. Additionally, any apps that are started using Windows Explorer (for example, by double-clicking a shortcut) also run with the standard set of user permissions. Many apps, including those that are included with the operating system itself, are designed to work properly in this way.

Other apps, especially those that were not specifically designed with security settings in mind, often require additional permissions to run successfully. These types of apps are referred to as legacy apps. Additionally, actions such as installing new software and making configuration changes to the Windows Firewall, require more permissions than what is available to a standard user account.

When an app needs to run with more than standard user rights, UAC can restore additional user groups to the token. This enables the user to have explicit control of apps that are making system level changes to their computer or device.

## <a href="" id="bkmk-app"></a>Practical applications


Admin Approval Mode in UAC helps prevent malware from silently installing without an administrator's knowledge. It also helps protect from inadvertent system-wide changes. Lastly, it can be used to enforce a higher level of compliance where administrators must actively consent or provide credentials for each administrative process.

## <a href="" id="bkmk-new"></a>New and changed functionality


To find out what's new in UAC for Windows 10, see [User Account Control](../whats-new/user-account-control.md).

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[How User Account Control works](how-user-account-control-works.md)</p></td>
<td align="left"><p>User Account Control (UAC) is a fundamental component of Microsoft's overall security vision. UAC helps mitigate the impact of malware.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[User Account Control security policy settings](user-account-control-security-policy-settings.md)</p></td>
<td align="left"><p>You can use security policies to configure how User Account Control works in your organization. They can be configured locally by using the Local Security Policy snap-in (secpol.msc) or configured for the domain, OU, or specific groups by Group Policy.</p></td>
</tr>
</tbody>
</table>

 

 

 





