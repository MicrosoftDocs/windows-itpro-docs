---
title: Interactive logon Don't display username at sign-in (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Interactive logon Don't display username at sign-in security policy setting.
ms.assetid: 98b24b03-95fe-4edc-8e97-cbdaa8e314fd
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

# Interactive logon: Don't display username at sign-in

**Applies to**
-   Windows Server 2003, Windows Vista, Windows XP, Windows Server 2008, Windows 7, Windows 8.1, Windows Server 2008 R2, Windows Server 2012 R2, Windows Server 2012, Windows 8, Windows 10

Describes the best practices, location, values, and security considerations for the **Interactive logon: Don't display username at sign-in** security policy setting. 

## Reference

A new policy setting has been introduced in Windows 10 starting with Windows 10 version 1703. This security policy setting determines whether the username is displayed during sign in. This setting only affects the **Other user** tile.

If the policy is enabled and a user signs in as **Other user**, the full name of the user is not displayed during sign-in. In the same context, if users type their email address and password at the sign in screen and press **Enter**, the displayed text “Other user” remains unchanged, and is no longer replaced by the user’s first and last name, as in previous versions of Windows 10. Additionally,if users enter their domain user name and password and click **Submit**, their full name is not shown until the Start screen displays.

If the policy is disabled and a user signs in as **Other user**, the “Other user” text is replaced by the user’s first and last name during sign-in.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

Your implementation of this policy depends on your security requirements for displayed logon information. If you have devices that store sensitive data, with monitors displayed in unsecured locations, or if you have devices with sensitive data that are remotely accessed, revealing logged on user’s full names or domain account names might contradict your overall security policy.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

| Server type or Group Policy object (GPO) | Default value|
| - | - |
| Default domain policy| Not defined|
| Default domain controller policy| Not defined|
| Stand-alone server default settings | Not defined|
| Domain controller effective default settings | Not defined|
| Member server effective default settings | Not defined|
| Effective GPO default settings on client computers | Not defined|
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

None.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

An attacker with access to the console (for example, someone with physical access or someone who can connect to the device through Remote Desktop Session Host) could view the name of the last user who logged on. The attacker could then try to guess the password, use a dictionary, or use a brute-force attack to try to log on.

### Countermeasure

Enable the **Interactive logon: Don't display user name at sign-in** setting.

### Potential impact

Users must always type their usernames and passwords when they log on locally or to the domain. The logon tiles of all logged on users are not displayed.

## Related topics

- [Security Options](security-options.md)
