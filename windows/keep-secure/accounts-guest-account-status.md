---
title: Accounts-- Guest account status (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Accounts-- Guest account status security policy setting.
ms.assetid: 07e53fc5-b495-4d02-ab42-5b245d10d0ce
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Accounts: Guest account status


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Security considerations](#security_considerations)
-   [Related topics](#related_topics)

Describes the best practices, location, values, and security considerations for the **Accounts: Guest account status** security policy setting.

## Reference


The **Accounts: Guest account status** policy setting determines whether the Guest account is enabled or disabled.

This account allows unauthenticated network users to gain access to the system by logging on as a Guest with no password. Unauthorized users can access any resources that are accessible to the Guest account over the network. This means that any network shared folders with permissions that allow access to the Guest account, the Guests group, or the Everyone group will be accessible over the network. This can lead to the exposure or corruption of data.

### Possible values

-   Enabled

-   Disabled

-   Not defined

### Best practices

Set **Accounts: Guest account status** to Disabled so that the built-in Guest account is no longer usable. All network users will have to authenticate before they can access shared resources on the system. If the Guest account is disabled and [Network access: Sharing and security model for local accounts](network-access-sharing-and-security-model-for-local-accounts.md) is set to **Guest only**, network logons—such as those performed by the SMB Service—will fail.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

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
<td align="left"><p>Disabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Disabled</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Disabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Disabled</p></td>
</tr>
</tbody>
</table>

 

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The default Guest account allows unauthenticated network users to log on as a Guest with no password. These unauthorized users could access any resources that are accessible to the Guest account over the network. This capability means that any shared folders with permissions that allow access to the Guest account, the Guests group, or the Everyone group are accessible over the network, which could lead to the exposure or corruption of data.

### Countermeasure

Disable the **Accounts: Guest account status** setting so that the built-in Guest account cannot be used.

### Potential impact

All network users must be authenticated before they can access shared resources. If you disable the Guest account and the **Network Access: Sharing and Security Model** option is set to **Guest Only**, network logons, such as those performed by the Microsoft Network Server (SMB Service), fail. This policy setting should have little impact on most organizations because it is the default setting starting with Windows Vista and Windows Server 2003.

## Related topics


[Security Options](security-options.md)

 

 





