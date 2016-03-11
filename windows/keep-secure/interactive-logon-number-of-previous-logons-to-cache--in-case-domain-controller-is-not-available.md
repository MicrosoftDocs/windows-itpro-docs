---
title: Interactive logon-- Number of previous logons to cache (in case domain controller is not available) (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Interactive logon-- Number of previous logons to cache (in case domain controller is not available) security policy setting.
ms.assetid: 660e925e-cc3e-4098-a41e-eb8db8062d8d
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Interactive logon: Number of previous logons to cache (in case domain controller is not available)


**Applies to**

-   Windows 10

**In this article**

-   [Reference](#reference)
-   [Policy management](#policy-management)
-   [Security considerations](#security-considerations)
-   [Related topics](#related-topics)

Describes the best practices, location, values, policy management and security considerations for the **Interactive logon: Number of previous logons to cache (in case domain controller is not available)** security policy setting.

## Reference


The **Interactive logon: Number of previous logons to cache (in case domain controller is not available**) policy setting determines whether a user can log on to a Windows domain by using cached account information. Logon information for domain accounts can be cached locally so that, if a domain controller cannot be contacted on subsequent logons, a user can still log on. This policy setting determines the number of unique users whose logon information is cached locally.

If a domain controller is unavailable and a user's logon information is cached, the user is prompted with the following message:

A domain controller for your domain could not be contacted. You have been logged on using cached account information. Changes to your profile since you last logged on might not be available.

If a domain controller is unavailable and a user's logon information is not cached, the user is prompted with this message:

The system cannot log you on now because the domain *DOMAIN NAME* is not available.

The value of this policy setting indicates the number of users whose logon information the server caches locally. If the value is 10, the server caches logon information for 10 users. When an eleventh user logs on to the device, the server overwrites the oldest cached logon session.

Users who access the server console will have their logon credentials cached on that server. A malicious user who is able to access the file system of the server can locate this cached information and use a brute-force attack to determine user passwords. Windows mitigates this type of attack by encrypting the information and keeping the cached credentials in the system's registries, which are spread across numerous physical locations.

### Possible values

-   A user-defined number from 0 through 50

-   Not defined

### Best practices

It is advisable to set **Interactive logon: Number of previous logons to cache (in case domain controller is not available)** to 0. Setting this value to 0 disables the local caching of logon information. Additional countermeasures include enforcing strong password policies and physically securing the computers. If the value is set to 0, users will be unable to log on to any computers if there is no domain controller available to authenticate them. Organizations might want to set **Interactive logon: Number of previous logons to cache (in case domain controller is not available)** to 2 for end-user systems, especially for mobile users. Setting this value to 2 means that the user's logon information will still be in the cache even if a member of the IT department has recently logged on to their device to perform system maintenance. This way, those users will be able to log on to their devices when they are not connected to the corporate network.

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
<td align="left"><p>10 logons</p></td>
</tr>
<tr class="even">
<td align="left"><p>DC Effective Default Settings</p></td>
<td align="left"><p>10 logons</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>10 logons</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>10 logons</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

None

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The number that is assigned to this policy setting indicates the number of users whose logon information is cache locally by the servers. If the number is set to 10, the server caches logon information for 10 users. When an eleventh user logs on to the device, the server overwrites the oldest cached logon session.

Users who access the server console have their logon credentials cached on that server. An attacker who is able to access the file system of the server could locate this cached information and use a brute force attack to attempt to determine user passwords.

To mitigate this type of attack, Windows encrypts the information and obscures its physical location.

### Countermeasure

Configure the **Interactive logon: Number of previous logons to cache (in case domain controller is not available)** setting to 0, which disables the local caching of logon information. Additional countermeasures include enforcement of strong password policies and physically secure locations for the computers.

### Potential impact

Users cannot log on to any devices if there is no domain controller available to authenticate them. Organizations can configure this value to 2 for end-user computers, especially for mobile users. A configuration value of 2 means that the user's logon information is still in the cache, even if a member of the IT department has recently logged on to the device to perform system maintenance. This method allows users to log on to their computers when they are not connected to the organization's network.

## Related topics


[Security Options](security-options.md)

 

 





