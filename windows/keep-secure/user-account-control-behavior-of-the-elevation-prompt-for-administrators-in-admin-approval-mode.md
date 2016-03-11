---
title: User Account Control-- Behavior of the elevation prompt for administrators in Admin Approval Mode (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the User Account Control-- Behavior of the elevation prompt for administrators in Admin Approval Mode security policy setting.
ms.assetid: 46a3c3a2-1d2e-4a6f-b5e6-29f9592f535d
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, policy management and security considerations for the **User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode** security policy setting.

## Reference


This policy setting determines the behavior of the elevation prompt for accounts that have administrative credentials.

### Possible values

-   **Elevate without prompting**

    Assumes that the administrator will permit an operation that requires elevation, and additional consent or credentials are not required.

    **Note**  
    Selecting **Elevate without prompting** minimizes the protection that is provided by UAC. We do not recommend selecting this value unless administrator accounts are tightly controlled and the operating environment is highly secure.

     

-   **Prompt for credentials on the secure desktop**

    When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a privileged user name and password. If the user enters valid credentials, the operation continues with the user's highest available privilege.

-   **Prompt for consent on the secure desktop**

    When an operation requires elevation of privilege, the user is prompted on the secure desktop to select **Permit** or **Deny**. If the user selects **Permit**, the operation continues with the user's highest available privilege.

-   **Prompt for credential**s

    An operation that requires elevation of privilege prompts the administrator to type the user name and password. If the administrator enters valid credentials, the operation continues with the applicable privilege.

-   **Prompt for consent**

    An operation that requires elevation of privilege prompts the administrator to select **Permit** or **Deny**. If the administrator selects **Permit**, the operation continues with the administrator's highest available privilege.

-   **Prompt for consent for non-Windows binaries**

    This is the default. When an operation for a non-Microsoft application requires elevation of privilege, the user is prompted on the secure desktop to select **Permit** or **Deny**. If the user selects **Permit**, the operation continues with the user's highest available privilege.

### Best practices

-   Selecting the option **Elevate without prompting** minimizes the protection that is provided by UAC. We do not recommend selecting this value unless administrator accounts are tightly controlled and the operating environment is highly secure.

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
<td align="left"><p>Prompt for consent for non-Windows binaries</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>Prompt for consent for non-Windows binaries</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Prompt for consent for non-Windows binaries</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Prompt for consent for non-Windows binaries</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

### Group Policy

All auditing capabilities are integrated in Group Policy. You can configure, deploy, and manage these settings in the Group Policy Management Console (GPMC) or Local Security Policy snap-in for a domain, site, or organizational unit (OU).

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

One of the risks that the UAC feature tries to mitigate is that of malicious software running under elevated credentials without the user or administrator being aware of its activity. This setting raises awareness to the administrator of elevated privilege operations, and it permits the administrator to prevent a malicious program from elevating its privilege when the program attempts to do so.

### Countermeasure

Configure the **User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode** setting to **Prompt for consent**.

### Potential impact

Administrators should be made aware that they will be prompted for consent when all binaries attempt to run.

## Related topics


[Security Options](security-options.md)

 

 





