---
title: Network access-- Shares that can be accessed anonymously (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network access-- Shares that can be accessed anonymously security policy setting.
ms.assetid: f3e4b919-8279-4972-b415-5f815e2f0a1a
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Network access: Shares that can be accessed anonymously


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, policy management and security considerations for the **Network access: Shares that can be accessed anonymously** security policy setting.

## Reference


This policy setting determines which shared folders can be accessed by anonymous users.

### Possible values

-   User-defined list of shared folders

-   Not Defined

### Best practices

-   Set this policy to a null value. There should be little impact because this is the default value. All users will have to be authenticated before they can access shared resources on the server.

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
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
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


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Any shared folders that are listed can be accessed by any network user, which could lead to the exposure or corruption of sensitive data.

### Countermeasure

Configure the **Network access: Shares that can be accessed anonymously** setting to a null value.

### Potential impact

There should be little impact because this is the default configuration. Only authenticated users have access to shared resources on the server.

## Related topics


[Security Options](security-options.md)

 

 





