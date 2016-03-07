---
title: System settings-- Use certificate rules on Windows executables for Software Restriction Policies (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the System settings-- Use certificate rules on Windows executables for Software Restriction Policies security policy setting.
ms.assetid: 2380d93b-b553-4e56-a0c0-d1ef740d089c
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# System settings: Use certificate rules on Windows executables for Software Restriction Policies


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy_management)
-   [Security considerations](#security_considerations)
-   [Related topics](#related_topics)

Describes the best practices, location, values, policy management and security considerations for the **System settings: Use certificate rules on Windows executables for Software Restriction Policies** security policy setting.

## Reference


This policy setting determines whether digital certificates are processed when software restriction policies are enabled and a user or process attempts to run software with an .exe file name extension. This security setting enables or disables certificate rules (which are a type of software restriction policy). With a software restriction policy, you can create a certificate rule that allows or disallows Microsoft Authenticode®-signed software to run, based on the digital certificate that is associated with the software. For certificate rules to work in software restriction policies, you must enable this security setting.

### Possible values

-   Enabled

-   Disabled

-   Not defined

### Best practices

-   Set this policy to **Enabled**. Enabling certificate rules results in software restriction policies checking a certificate revocation list (CRL) to make sure that the software's certificate and signature are valid. When you start signed programs, this setting can decrease system performance. You can disable CRLs by editing the software restriction policies in the desired GPO. In the **Trusted Publishers Properties** dialog box, clear the **Publisher** and **Timestamp** check boxes.

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

Without the use of software restriction policies, users and device might be exposed to unauthorized software that could include malware.

### Countermeasure

Enable the **System settings: Use certificate rules on Windows executables for Software Restriction Policies** setting.

### Potential impact

If you enable certificate rules, software restriction policies check a certificate revocation list (CRL) to verify that the software's certificate and signature are valid. This checking process may negatively affect performance when signed programs start. To disable this feature, you can edit the software restriction policies in the appropriate GPO. In the **Trusted Publishers Properties** dialog box, clear the **Publisher** and **Timestamp** check boxes.

## Related topics


[Security Options](security-options.md)

 

 





