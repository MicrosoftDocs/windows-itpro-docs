---
title: Accounts Block Microsoft accounts (Windows 10)
description: Describes the best practices, location, values, management, and security considerations for the Accounts Block Microsoft accounts security policy setting.
ms.assetid: 94c76f45-057c-4d80-8d01-033cf28ef2f7
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Accounts: Block Microsoft accounts
**Applies to**
-   Windows 10
Describes the best practices, location, values, management, and security considerations for the **Accounts: Block Microsoft accounts** security policy setting.
## Reference
This policy setting prevents users from adding new Microsoft accounts on a device
If you click the **Users can’t add Microsoft accounts** setting option, users will not be able to switch a local account to a Microsoft account, or connect a domain account to a Microsoft account to drive sync, roaming, or other background services. This is the preferred option if you need to limit the use of Microsoft accounts in your enterprise. Users will still be able to add app-specific Microsoft accounts for use with consumer apps. To block this use, turn off the ability to install consumer apps or the Store.
If you click the **Users can’t add or log on with Microsoft accounts** setting option, existing Microsoft account users will not be able to log on to Windows. Selecting this option might make it impossible for an existing administrator to log on to a computer and manage the system.
If you disable or do not configure this policy (recommended), users will be able to use Microsoft accounts with Windows.
### Possible values
-   This policy is disabled
-   Users can’t add Microsoft accounts
-   Users can’t add or log on with Microsoft accounts
By default, this setting is not defined on domain controllers and disabled on stand-alone servers.
### Best practices
-   By disabling or not configuring this policy setting on the client computer, users will be able to use their Microsoft account, local account, or domain account for their sign-in session to Windows. It also enables the user to connect a local or domain account to a Microsoft account. This provides a convenient option for your users.
-   If you need to limit the use of Microsoft accounts in your organization, click the **Users can’t add Microsoft accounts** setting option so that users will not be able to create new Microsoft accounts on a computer, switch a local account to a Microsoft account, or connect a domain account to a Microsoft account.
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
This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of the countermeasure implementation.
### Vulnerability
Although Microsoft accounts are password-protected, they also have the potential of greater exposure outside of the enterprise. Additionally, if the owner of a Microsoft account is not easily distinguishable, auditing and forensics become more difficult.
### Countermeasure
Require only domain accounts in your enterprise by limiting the use of Microsoft accounts. Click the **Users can’t add Microsoft accounts** setting option so that users will not be able to create new Microsoft accounts on a device, switch a local account to a Microsoft account, or connect a domain account to a Microsoft account.
### Potential impact
Establishing greater control over accounts in your organization can give you more secure management capabilities, including procedures around password resets.
## Related topics
[Security Options](security-options.md)
 
 
