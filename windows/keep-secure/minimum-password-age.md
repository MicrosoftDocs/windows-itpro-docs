---
title: Minimum password age (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Minimum password age security policy setting.
ms.assetid: 91915cb2-1b3f-4fb7-afa0-d03df95e8161
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Minimum password age


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, policy management, and security considerations for the **Minimum password age** security policy setting.

## Reference


The **Minimum password age** policy setting determines the period of time (in days) that a password can be used before the system requires the user to change it. You can set passwords to expire after a number of days between 1 and 999, or you can specify that passwords never expire by setting the number of days to 0. If [Maximum password age](maximum-password-age.md) is between 1 and 999 days, the minimum password age must be less than the maximum password age. If Maximum password age is set to 0, **Minimum password age** can be any value between 0 and 998 days.

### Possible values

-   User-specified number of days between 0 and 998

-   Not defined

### Best practices

Set **Minimum password age** to a value of 2 days. Setting the number of days to 0 allows immediate password changes, which is not recommended.

If you set a password for a user and you want that user to change the administrator-defined password, you must select the **User must change password at next logon** check box. Otherwise, the user will not be able to change the password until the number of days specified by **Minimum password age**.

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server type or Group Policy Object (GPO)</th>
<th align="left">Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Default domain policy</p></td>
<td align="left"><p>1 day</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default domain controller policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-alone server default settings</p></td>
<td align="left"><p>0 days</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain controller effective default settings</p></td>
<td align="left"><p>1 day</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member server effective default settings</p></td>
<td align="left"><p>1 day</p></td>
</tr>
<tr class="even">
<td align="left"><p>Effective GPO default settings on client computers</p></td>
<td align="left"><p>1 day</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features, tools, and guidance to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Users may have favorite passwords that they like to use because they are easy to remember and they believe that their password choice is secure from compromise. Unfortunately, passwords can be compromised and if an attacker is targeting a specific individual user account, with knowledge of data about that user, reuse of old passwords can cause a security breach.

To address password reuse, you must use a combination of security settings. Using this policy setting with the [Enforce password history](enforce-password-history.md) policy setting prevents the easy reuse of old passwords. For example, if you configure the Enforce password history policy setting to ensure that users cannot reuse any of their last 12 passwords, but you do not configure the **Minimum password age** policy setting to a number that is greater than 0, users could change their password 13 times in a few minutes and reuse their original password. You must configure this policy setting to a number that is greater than 0 for the Enforce password history policy setting to be effective.

### Countermeasure

Configure the **Minimum password age** policy setting to a value of at least 2 days. Users should know about this limitation and contact the Help Desk if they need to change their password during that two-day period. If you configure the number of days to 0, immediate password changes would be allowed, which we do not recommend.

### Potential impact

If you set a password for a user but wants that user to change the password when the user first logs on, the administrator must select the **User must change password at next logon** check box, or the user cannot change the password until the next day.

## Related topics


[Password Policy](password-policy.md)

 

 





