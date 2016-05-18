---
title: Microsoft network client Send unencrypted password to third-party SMB servers (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Microsoft network client Send unencrypted password to third-party SMB servers security policy setting.
ms.assetid: 97a76b93-afa7-4dd9-bb52-7c9e289b6017
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Microsoft network client: Send unencrypted password to third-party SMB servers
**Applies to**
-   Windows 10
Describes the best practices, location, values, policy management and security considerations for the **Microsoft network client: Send unencrypted password to third-party SMB servers** security policy setting.
## Reference
The Server Message Block (SMB) protocol provides the basis for file and print sharing and many other networking operations, such as remote Windows administration. This policy setting allows or prevents the SMB redirector to send plaintext passwords to a non-Microsoft server service that does not support password encryption during authentication.
### Possible values
-   Enabled
    The Server Message Block (SMB) redirector is allowed to send plaintext passwords to a non-Microsoft server service that does not support password encryption during authentication.
-   Disabled
    The Server Message Block (SMB) redirector only sends encrypted passwords to non-Microsoft SMB server services. If those server services do not support password encryption, the authentication request will fail.
-   Not defined
### Best practices
-   It is advisable to set **Microsoft network client: Send unencrypted password to connect to third-party SMB servers** to Disabled.
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
 
## Policy management
This section describes features and tools that are available to help you manage this policy.
### Restart requirement
None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.
## Security considerations
This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.
### Vulnerability
If you enable this policy setting, the server can transmit plaintext passwords across the network to other computers that offer SMB services. These other devices might not use any of the SMB security mechanisms that are included with Windows Server 2003 or later.
### Countermeasure
Disable the **Microsoft network client: Send unencrypted password to connect to third-party SMB servers** setting.
### Potential impact
Some older applications may not be able to communicate with the servers in your organization by means of the SMB protocol.
## Related topics
[Security Options](security-options.md)
 
 
