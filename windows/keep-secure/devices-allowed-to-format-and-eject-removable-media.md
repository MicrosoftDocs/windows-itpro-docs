---
title: Devices-- Allowed to format and eject removable media (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Devices-- Allowed to format and eject removable media security policy setting.
ms.assetid: d1b42425-7244-4ab1-9d46-d68de823459c
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Devices: Allowed to format and eject removable media


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy_management)
-   [Security considerations](#security_considerations)
-   [Related topics](#related_topics)

Describes the best practices, location, values, and security considerations for the **Devices: Allowed to format and eject removable media** security policy setting.

## Reference


This policy setting determines who is allowed to format and eject removable media.

Users can move removable disks to a different device where they have administrative user rights and then take ownership of any file, assign themselves full control, and view or modify any file. The advantage of configuring this policy setting is diminished by the fact that most removable storage devices will eject media with the press of a button.

### Possible values

-   Administrators

-   Administrators and Power Users

-   Administrators and Interactive Users (not applicable to Windows Server 2008 R2 or Windows 7 and later)

-   Not defined

### Best practices

-   It is advisable to set **Allowed to format and eject removable media** to **Administrators**. Only administrators will be able to eject NTFS-formatted removable media.

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
<td align="left"><p>Administrators</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Administrators</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Administrators</p></td>
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

Users could move data on removable disks to a different computer where they have administrative privileges. The user could then take ownership of any file, grant themselves full control, and view or modify any file. The fact that most removable storage devices eject media when a mechanical button is pressed diminishes the advantage of this policy setting.

### Countermeasure

Configure the **Devices: Allowed to format and eject removable media** setting to **Administrators**.

### Potential impact

Only administrators can format and eject removable media. If users are in the habit of using removable media for file transfers and storage, they must be informed of the change in policy.

## Related topics


[Security Options](security-options.md)

 

 





