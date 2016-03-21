---
title: Lock pages in memory (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Lock pages in memory security policy setting.
ms.assetid: cc724979-aec0-496d-be4e-7009aef660a3
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Lock pages in memory


**Applies to**

-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Lock pages in memory** security policy setting.

## Reference


This policy setting determines which accounts can use a process to keep data in physical memory, which prevents the computer from paging the data to virtual memory on a disk.

Normally, an application running on Windows can negotiate for more physical memory, and in response to the request, the application begins to move the data from RAM (such as the data cache) to a disk. When the pageable memory is moved to a disk, more RAM is free for the operating system to use.

Enabling this policy setting for a specific account (a user account or a process account for an application) prevents paging of the data. Thereby, the amount of memory that Windows can reclaim under pressure is limited. This could lead to performance degradation.

**Note**  
By configuring this policy setting, the performance of the Windows operating system will differ depending on if applications are running on 32-bit or 64-bit systems, and if they are virtualized images. Performance will also differ between earlier and later versions of the Windows operating system.

 

Constant: SeLockMemoryPrivilege

### Possible values

-   User-defined list of accounts

-   Not defined

### Best practices

Best practices are dependent on the platform architecture and the applications running on those platforms.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server type or GPO</th>
<th align="left">Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Default Domain Policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default Domain Controller Policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-Alone Server Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Controller Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features, tools, and guidance to help you manage this policy.

A restart of the computer is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

### Group Policy

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings

2.  Site policy settings

3.  Domain policy settings

4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Users with the **Lock pages in memory** user right could assign physical memory to several processes, which could leave little or no RAM for other processes and result in a denial-of-service condition.

### Countermeasure

Do not assign the **Lock pages in memory** user right to any accounts.

### Potential impact

None. Not defined is the default configuration.

## Related topics


[User Rights Assignment](user-rights-assignment.md)

 

 





