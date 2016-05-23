---
title: User Account Control Virtualize file and registry write failures to per-user locations (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the User Account Control Virtualize file and registry write failures to per-user locations security policy setting.
ms.assetid: a7b47420-cc41-4b1c-b03e-f67a05221261
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# User Account Control: Virtualize file and registry write failures to per-user locations
**Applies to**
-   Windows 10
Describes the best practices, location, values, policy management and security considerations for the **User Account Control: Virtualize file and registry write failures to per-user locations** security policy setting.
## Reference
This policy setting enables or disables the redirection of the write failures of earlier applications to defined locations in the registry and the file system. This feature mitigates applications that historically ran as administrator and wrote runtime application data to %ProgramFiles%, %Windir%, %Windir%\\system32, or HKEY\_LOCAL\_MACHINE\\Software\\.
This feature can be disabled for applications on devices running at least Windows Vista because it is unnecessary.
### Possible values
-   **Enabled**
    Setting this value facilitates the runtime redirection of application write failures to defined user locations for the file system and the registry.
-   **Disabled**
    Applications that write data to protected locations fail.
### Best practices
1.  If you run applications that are not Windows Vista-compliant, enable this security policy to prevent the possibility that these older applications could write data to unsecure locations.
2.  If you only run at least Windows Vista–compliant applications, this feature is unnecessary so you can disable this policy.
### Location
\\Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options
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
All auditing capabilities are integrated in Group Policy. You can configure, deploy, and manage these settings in the Group Policy Management Console (GPMC) or Local Security Policy snap-in for a domain, site, or organizational unit (OU).
## Security considerations
This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.
### Vulnerability
Earlier applications might not write data to secure locations.
### Countermeasure
Enable the **User Account Control: Virtualize file and registry write failures to per-user locations** setting.
### Potential impact
None. This is the default configuration.
## Related topics
[Security Options](security-options.md)
 
 
