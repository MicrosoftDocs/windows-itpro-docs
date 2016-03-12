---
title: Accounts Rename guest account (Windows 10)
description: Describes the best practices location values and security considerations for the Accounts Rename guest account security policy setting.
MSHAttr: PreferredLib /library
ms.assetid: 9b8052b4-bbb9-4cc1-bfee-ce25390db707
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Accounts: Rename guest account


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, and security considerations for the **Accounts: Rename guest account** security policy setting.

## Reference


The **Accounts: Rename guest account** policy setting determines whether a different account name is associated with the security identifier (SID) for the Guest account.

### Possible values

-   *User-defined text*

-   Guest

### Best practices

1.  For devices in unsecured locations, renaming the account makes it more difficult for unauthorized users to guess it.

2.  For computers in secured or trusted locations, keeping the name of the account as Guest provides consistency among devices

### Location

Computer Configuration\\Windows Settings\\Security Settings

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
<td align="left"><p>Guest</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default Domain Controller Policy</p></td>
<td align="left"><p>Guest</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-Alone Server Default Settings</p></td>
<td align="left"><p>Guest</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Guest</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Guest</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p><em>User-defined text</em></p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

None.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local device by using the Local Security Policy snap-in.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The guest account exists in all Windows server and client operating system versions beginning with Windows Server 2003 and Windows XP Professional. Because the account name is well known, it provides a vector for a malicious user to get access to network resources and attempt to elevate privileges or install software that could be used for a later attack on your system.

### Countermeasure

Specify a new name in the **Accounts: Rename guest account** setting to rename the Guest account. If you rename this account, it is slightly more difficult for unauthorized persons to guess this privileged user name and password combination.

### Potential impact

There should be little impact because the Guest account is disabled by default in Windows 2000 Server, Windows Server 2003, and Windows XP. For later operating systems, the policy is enabled with **Guest** as the default.

## Related topics


[Security Options](security-options.md)

 

 





