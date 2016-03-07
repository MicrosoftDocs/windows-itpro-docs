---
title: Microsoft network server-- Disconnect clients when logon hours expire (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Microsoft network server-- Disconnect clients when logon hours expire security policy setting.
ms.assetid: 48b5c424-9ba8-416d-be7d-ccaabb3f49af
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Microsoft network server: Disconnect clients when logon hours expire


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy_management)
-   [Security considerations](#security_considerations)
-   [Related topics](#related_topics)

Describes the best practices, location, values, and security considerations for the **Microsoft network server: Disconnect clients when logon hours expire** security policy setting.

## Reference


This policy setting enables or disables the forced disconnection of users who are connected to the local device outside their user account's valid logon hours. It affects the SMB component. If you enable this policy setting, client computer sessions with the SMB service are forcibly disconnected when the client's logon hours expire. If you disable this policy setting, established client device sessions are maintained after the client device's logon hours expire.

### Possible values

-   Enabled

    Client device sessions with the SMB service are forcibly disconnected when the client device's logon hours expire. If logon hours are not used in your organization, enabling this policy setting will have no impact.

-   Disabled

    The system maintains an established client device session after the client device's logon hours have expired.

-   Not defined

### Best practices

-   If you enable this policy setting, you should also enable [Network security: Force logoff when logon hours expire](network-security-force-logoff-when-logon-hours-expire.md).

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
<td align="left"><p>Enabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Enabled</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Enabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Enabled</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If your organization configures logon hours for users, it makes sense to enable this policy setting. Otherwise, users who should not have access to network resources outside of their logon hours can continue to use those resources with sessions that were established during allowed hours.

### Countermeasure

Enable the **Microsoft network server: Disconnect clients when logon hours expire** setting.

### Potential impact

If logon hours are not used in your organization, this policy setting has no impact. If logon hours are used, existing user sessions are forcibly terminated when their logon hours expire.

## Related topics


[Security Options](security-options.md)

 

 





