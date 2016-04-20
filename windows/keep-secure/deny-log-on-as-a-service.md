---
title: Deny log on as a service (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Deny log on as a service security policy setting.
ms.assetid: f1114964-df86-4278-9b11-e35c66949794
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Deny log on as a service


**Applies to**

-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Deny log on as a service** security policy setting.

## Reference


This policy setting determines which users are prevented from logging on to the service applications on a device.

A service is an application type that runs in the system background without a user interface. It provides core operating system features, such as web serving, event logging, file serving, printing, cryptography, and error reporting.

Constant: SeDenyServiceLogonRight

### Possible values

-   User-defined list of accounts

-   Not defined

### Best practices

1.  When you assign this user right, thoroughly test that the effect is what you intended.

2.  Within a domain, modify this setting on the applicable Group Policy Object (GPO).

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

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
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Controller Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member Server Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Client Computer Effective Default Settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
</tbody>
</table>

 

## Policy management


This section describes features and tools available to help you manage this policy.

A restart of the computer is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

### Group Policy

On a domain-joined device, including the domain controller, this policy can be overwritten by a domain policy, which will prevent you from modifying the local policy setting.

This policy setting might conflict with and negate the **Log on as a service** setting.

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings

2.  Site policy settings

3.  Domain policy settings

4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations


This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Accounts that can log on to a service application could be used to configure and start new unauthorized services, such as a keylogger or other malware. The benefit of the specified countermeasure is somewhat reduced by the fact that only users with administrative rights can install and configure services, and an attacker who has already attained that level of access could configure the service to run by using the System account.

### Countermeasure

We recommend that you not assign the **Deny log on as a service** user right to any accounts. This is the default configuration. Organizations that are extremely concerned about security might assign this user right to groups and accounts when they are certain that they will never need to log on to a service application.

### Potential impact

If you assign the **Deny log on as a service** user right to specific accounts, services may not start and a denial-of-service condition could result.

## Related topics


[User Rights Assignment](user-rights-assignment.md)

 

 





