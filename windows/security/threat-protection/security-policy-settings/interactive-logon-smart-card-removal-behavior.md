---
title: Interactive logon Smart card removal behavior (Windows 10)
description: Best practices, location, values, policy management, and security considerations for the security policy setting, Interactive logon Smart card removal behavior.
ms.assetid: 61487820-9d49-4979-b15d-c7e735999460
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 04/19/2017
ms.technology: itpro-security
---

# Interactive logon: Smart card removal behavior

**Applies to**
-   Windows 11
-   Windows 10

Describes the recommended practices, location, values, policy management, and security considerations for the **Interactive logon: Smart card removal behavior** security policy setting.

## Reference

This policy setting determines what happens when the smart card for a logged-on user is removed from the smart card reader.

If smart cards are used for authentication, the device should automatically lock itself when the card is removed. So if users forget to manually lock their devices when they leave, malicious users cannot gain access.

If you select **Force Logoff** in the property sheet for this policy setting, the user is automatically logged off when the smart card is removed. Users will have to reinsert their smart cards and reenter their PINs when they return to their workstations.

> [!NOTE]
> This policy depends on **Smart Card Removal Policy** service. The service must be running for the policy to take effect, so it is recommended to set the startup type of the service to **Automatic**.

### Possible values

-   No Action
-   Lock Workstation

    If you use this setting, the workstation is locked when the smart card is removed. So users can leave the area, take their smart card with them, and still maintain a protected session.

-   Force Logoff

    If you use this setting, the user is automatically logged off when the smart card is removed.

-   Disconnect if a remote Remote Desktop Services session

    If you use this setting, removal of the smart card disconnects the session without logging off the user. So the user can insert the smart card and resume the session later, or at another smart card reader-equipped computer, without having to log on again. If the session is local, this policy functions identically to Lock Workstation.

-   Not Defined

### Best practices

-   Set **Interactive logon: Smart card removal behavior** to **Lock Workstation**. If you select **Lock Workstation** in the property sheet for this policy setting, the workstation is locked when the smart card is removed. So users can leave the area, take their smart card with them, and still maintain a protected session.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy, by server type or Group Policy Object (GPO). Default values are also listed on the policy's property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | No Action| 
| DC Effective Default Settings | No Action| 
| Member Server Effective Default Settings | No Action| 
| Client Computer Effective Default Settings | No Action| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

### Policy conflict considerations

None

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through GPOs. If this policy isn't contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Users sometimes forget to lock their workstations when they're away from them, allowing the possibility for malicious users to access their devices. If smart cards are used for authentication, the device should automatically lock itself when the card is removed to ensure that only the user with the smart card is accessing resources by using those credentials.

### Countermeasure

Configure the **Interactive logon: Smart card removal behavior** setting to **Lock Workstation**.

If you select **Lock Workstation** for this policy setting, the device locks when the smart card is removed. Users can leave the area, take their smart card with them, and still maintain a protected session. This behavior is similar to the setting that requires users to log on when resuming work on the device after the screen saver has started.

If you select **Force Logoff** for this policy setting, the user is automatically logged off when the smart card is removed. This setting is useful when a device is deployed as a public access point, such as a kiosk or other type of shared device

### Potential impact

If you select **Force Logoff**, users must insert their smart cards and enter their PINs when they return to their workstations.

## Related topics

- [Security Options](security-options.md)
