---
title: Domain member-- Maximum machine account password age (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Domain member-- Maximum machine account password age security policy setting.
ms.assetid: 0ec6f7c1-4d82-4339-94c0-debb2d1ac109
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Domain member: Maximum machine account password age


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, and security considerations for the **Domain member: Maximum machine account password age** security policy setting.

## Reference


The **Domain member: Maximum machine account password age** policy setting determines the maximum allowable age for a machine account password.

In Active Directory–based domains, each device has an account and password, just like every user. By default, the domain members automatically change their domain password every 30 days. Increasing this interval significantly, or setting it to **0** so that the device no longer change their passwords, gives a malicious user more time to undertake a brute-force password-guessing attack against one of the machine accounts.

### Possible values

-   User-defined number of days between 0 and 999

-   Not defined.

### Best practices

1.  It is often advisable to set **Domain member: Maximum machine account password age** to about 30 days.

2.  Some organizations pre-build devices and then store them for later use or ship them to remote locations. If the machine's account has expired, it will no longer be able to authenticate with the domain. Devices that cannot authenticate with the domain must be removed from the domain and rejoined to it. For this reason, some organizations might want to create a special organizational unit (OU) for computers that are prebuilt, and configure the value for this policy setting to a larger number of days.

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
<td align="left"><p>30 days</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>30 days</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>30 days</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>30 days</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

In Active Directory–based domains, each device has an account and password, just as every user does. By default, the domain members automatically change their domain password every 30 days. If you increase this interval significantly, or set it to 0 so that the computers no longer change their passwords, an attacker has more time to undertake a brute-force attack to guess the password of one or more computer accounts.

### Countermeasure

Configure the **Domain member: Maximum machine account password age** setting to 30 days.

### Potential impact

None. This is the default configuration.

## Related topics


[Security Options](security-options.md)

 

 





