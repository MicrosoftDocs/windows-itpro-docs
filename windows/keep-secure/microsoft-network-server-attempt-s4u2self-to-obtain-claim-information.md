---
title: Microsoft network server Attempt S4U2Self to obtain claim information (Windows 10)
description: Describes the best practices, location, values, management, and security considerations for the Microsoft network server Attempt S4U2Self to obtain claim information security policy setting.
ms.assetid: e4508387-35ed-4a3f-a47c-27f8396adbba
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Microsoft network server: Attempt S4U2Self to obtain claim information
**Applies to**
-   Windows 10
Describes the best practices, location, values, management, and security considerations for the **Microsoft network server: Attempt S4U2Self to obtain claim information** security policy setting.
## Reference
This security setting supports client devices running a version of Windows prior to Windows 8 that are trying to access a file share that requires user claims. This setting determines whether the local file server will attempt to use Kerberos Service-for-User-to-Self (S4U2Self) functionality to obtain a network client principal’s claims from the client’s account domain. This setting should only be enabled if the file server is using user claims to control access to files, and if the file server will support client principals whose accounts might be in a domain that has client computers and domain controllers running a version of Windows prior to Windows 8 or Windows Server 2012.
When enabled, this security setting causes the Windows file server to examine the access token of an authenticated network client principal and determines if claim information is present. If claims are not present, the file server will then use the Kerberos S4U2Self feature to attempt to contact a Windows Server 2012 domain controller in the client’s account domain and obtain a claims-enabled access token for the client principal. A claims-enabled token might be needed to access files or folders that have claim-based access control policy applied.
If this setting is disabled, the Windows file server will not attempt to obtain a claim-enabled access token for the client principal.
### Possible values
-   **Default**
    The Windows file server will examine the access token of an authenticated network client principal and determine if claim information is present.
-   **Enabled**
    Same as **Default**.
-   **Disabled**
-   **Not defined**
    Same as **Disabled**.
### Best practices
This setting should be set to **Default** so that the file server can automatically evaluate whether claims are needed for the user. You should explicitly configure this setting to **Enabled** only if there are local file access policies that include user claims.
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
 
## Policy management
This section describes features and tools that are available to help you manage this policy.
### Restart requirement
None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.
### Group Policy
This setting should only be enabled if the file server is using user claims to control access to files, and if the file server will support client principals whose accounts might be in a domain that has client computers and domain controllers running a version of Windows prior to Windows 8 or Windows Server 2012.
## Security considerations
This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.
### Vulnerability
None. Enabling this policy setting allows you take advantage of features in Windows Server 2012 and Windows 8 for specific scenarios to use claims-enabled tokens to access files or folders that have claim-based access control policy applied on Windows operating systems prior to Windows Server 2012 and Windows 8.
### Countermeasure
Not applicable.
### Potential impact
None.
## Related topics
[Security Options](security-options.md)
 
 
