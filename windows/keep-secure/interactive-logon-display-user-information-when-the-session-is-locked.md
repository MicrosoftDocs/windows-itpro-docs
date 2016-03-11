---
title: Interactive logon-- Display user information when the session is locked (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Interactive logon-- Display user information when the session is locked security policy setting.
ms.assetid: 9146aa3d-9b2f-47ba-ac03-ff43efb10530
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Interactive logon: Display user information when the session is locked


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, and security considerations for the **Interactive logon: Display user information when the session is locked** security policy setting.

## Reference


When a session is locked in a Windows operating system (meaning the user at the computer pressed CTRL+ALT+DEL and the Secure Desktop is displayed), user information is displayed. By default, this information is in the form of **&lt;user name&gt; is logged on**. The displayed user name is the user’s full name as set on the Properties page for that user. These settings do not apply to the logon tiles, which are displayed on the desktop after using the **Switch User** feature. The information that is displayed can be changed to meet your security requirements using the following possible values.

### Possible values

-   **User display name, domain and user names**

    If this is a local logon, the user’s full name is displayed on the Secure Desktop. If it is a domain logon, the user’s domain and user’s account name is displayed.

-   **User display name only**

    The name of the user who locked the session is displayed on the Secure Desktop as the user’s full name.

-   **Do not display user information**

    No names are displayed on the Secure Desktop, but user’s full names will be displayed on the **Switch user** desktop.

-   Blank.

    Default setting. This translates to “Not defined,” but it will display the user’s full name in the same manner as the **User display name, domain and user names** option. When an option is set, you cannot reset this policy to blank, or not defined.

### Best practices

Your implementation of this policy depends on your security requirements for displayed logon information. If you have devices that store sensitive data, with monitors displayed in unsecured locations, or if you have computers with sensitive data that are remotely accessed, revealing logged on user’s full names or domain account names might contradict your overall security policy.

Depending on your security policy, you might also want to enable the [Interactive logon: Do not display last user name](interactive-logon-do-not-display-last-user-name.md) policy, which will prevent the Windows operating system from displaying the logon name and logon tile of the last user to logon.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server type or Group Policy object (GPO)</th>
<th align="left">Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Default domain policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default domain controller policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-alone server default settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain controller effective default settings</p></td>
<td align="left"><p><strong>User display name, domain and user names</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member server effective default settings</p></td>
<td align="left"><p><strong>User display name, domain and user names</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>Effective GPO default settings on client computers</p></td>
<td align="left"><p><strong>User display name, domain and user names</strong></p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

None

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

When a computer displays the Secure Desktop in an unsecured area, certain user information can be readily available to anyone looking at the monitor, either physically or through a remote connection. The displayed user information could include the domain user account name or the full name of the user who locked the session or who had logged on last.

### Countermeasure

Enabling this policy setting allows the operating system to hide certain user information from being displayed on the Secure Desktop (after the device has been booted or when the session has been locked by using CTRL+ALT+DEL). However, user information is displayed if the **Switch user** feature is used so that the logon tiles are displayed for each logged on user.

You might also want to enable the [Interactive logon: Do not display last user name](interactive-logon-do-not-display-last-user-name.md) policy, which will prevent the Windows operating system from displaying the logon name and logon tile of the last user to logon.

### Potential impact

If you do not enable this policy, the effect will be the same as enabling the policy and selecting the **User display name, domain and user names** option.

If the policy is enabled and set to **Do not display user information**, an observer cannot see who is logged onto the Secure Desktop, but the logon tile is still present if the [Interactive logon: Do not display last user name](interactive-logon-do-not-display-last-user-name.md) policy is not enabled. Depending on how the logon tiles are configured, they could provide visual clues as to who is logged on. In addition, if the Interactive logon: Do not display last user name policy is not enabled, then the **Switch user** feature will show user information.

## Related topics


[Security Options](security-options.md)

 

 





