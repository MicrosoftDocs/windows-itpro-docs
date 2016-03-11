---
title: Network access-- Allow anonymous SID/Name translation (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network access-- Allow anonymous SID/Name translation security policy setting.
ms.assetid: 0144477f-22a6-4d06-b70a-9c9c2196e99e
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Network access: Allow anonymous SID/Name translation


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, policy management and security considerations for the **Network access: Allow anonymous SID/Name translation** security policy setting.

## Reference


This policy setting enables or disables the ability of an anonymous user to request security identifier (SID) attributes for another user.

If this policy setting is enabled, a user might use the well-known Administrators SID to get the real name of the built-in Administrator account, even if the account has been renamed. That person might then use the account name to initiate a brute-force password-guessing attack.

Misuse of this policy setting is a common error that can cause data loss or problems with data access or security.

### Possible values

-   Enabled

    An anonymous user can request the SID attribute for another user. An anonymous user with knowledge of an administrator's SID could contact a computer that has this policy enabled and use the SID to get the administrator's name. This setting affects the SID-to-name translation as well as the name-to-SID translation

-   Disabled

    Prevents an anonymous user from requesting the SID attribute for another user.

-   Not defined

### Best practices

-   Set this policy to Disabled. This is the default value on member computers; therefore, it will have no impact on them. The default value for domain controllers is Enabled.

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
<td align="left"><p>Note defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-Alone Server Default Settings</p></td>
<td align="left"><p>Disabled</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Enabled</p></td>
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

 

### Operating system version differences

The default value of this setting has changed between operating systems as follows:

-   The default on domain controllers running Windows Server 2003 R2 or earlier was set to Enabled.

-   The default on domain controllers running Windows Server 2008 and later is set to Disabled.

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

Modifying this setting may affect compatibility with client computers, services, and applications.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If this policy setting is enabled, a user with local access could use the well-known Administrator's SID to learn the real name of the built-in Administrator account, even if it has been renamed. That person could then use the account name to initiate a password-guessing attack.

### Countermeasure

Disable the **Network access: Allow anonymous SID/Name translation** setting.

### Potential impact

Disabled is the default configuration for this policy setting on member devices; therefore, it has no impact on them. The default configuration for domain controllers is Enabled.

## Related topics


[Security Options](security-options.md)

 

 





