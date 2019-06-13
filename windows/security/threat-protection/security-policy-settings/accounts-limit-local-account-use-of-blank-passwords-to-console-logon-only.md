---
title: Accounts Limit local account use of blank passwords to console logon only (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Accounts Limit local account use of blank passwords to console logon only security policy setting.
ms.assetid: a1bfb58b-1ae8-4de9-832b-aa889a6e64bd
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Accounts: Limit local account use of blank passwords to console logon only

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Accounts: Limit local account use of blank passwords to console logon only** security policy setting.

## Reference

The **Accounts: Limit local account use of blank passwords to console logon only** policy setting determines whether remote interactive logons by network services such as Remote Desktop Services, Telnet, and File Transfer Protocol (FTP) are allowed for local accounts that have blank passwords. If this policy setting is enabled, a local account must have a nonblank password to be used to perform an interactive or network logon from a remote client.

This policy setting does not affect interactive logons that are performed physically at the console or logons that use domain accounts. It is possible for non-Microsoft applications that use remote interactive logons to bypass this policy setting.
Blank passwords are a serious threat to computer security and they should be forbidden through both corporate policy and suitable technical measures. Nevertheless, if a user with the ability to create new accounts creates one that has bypassed your domain-based password policy settings, that account might have a blank password. For example, a user could build a stand-alone system, create one or more accounts with blank passwords, and then join the computer to the domain. The local accounts with blank passwords would still function. Anyone who knows the account name can then use accounts with blank passwords to log on to systems.

Devices that are not in physically secure locations should always enforce strong password policies for all local user accounts. Otherwise, anyone with physical access to the device can log on by using a user account that does not have a password. This is especially important for portable devices.

If you apply this security policy to the Everyone group, no one will be able to log on through Remote Desktop Services.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   It is advisable to set **Accounts: Limit local account use of blank passwords to console logon only** to Enabled.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined |
| Default Domain Controller Policy | Not defined |
| Stand-Alone Server Default Settings | Enabled |
| DC Effective Default Settings | Enabled |
| Member Server Effective Default Settings | Enabled |
| Client Computer Effective Default Settings | Enabled |
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

The policy as distributed through the GPO takes precedence over the locally configured policy setting on a computer joined to a domain. On the domain controller, use ADSI Edit or the dsquery command to determine effective minimum password length.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local device by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Blank passwords are a serious threat to computer security, and they should be forbidden through organizational policy and suitable technical measures. Starting with Windows Server 2003, the default settings for Active Directory domains require complex passwords of at least seven characters, and eight characters starting with Windows Server 2008. However, if users with the ability to create new accounts bypass your domain-based password policies, they could create accounts with blank passwords. For example, a user could build a stand-alone computer, create one or more accounts with blank passwords, and then join the computer to the domain. The local accounts with blank passwords would still function. Anyone who knows the name of one of these unprotected accounts could then use it to log on.

### Countermeasure

Enable the **Accounts: Limit local account use of blank passwords to console logon only** setting.

### Potential impact

None. This is the default configuration.

## Related topics
[Security Options](security-options.md)
