---
title: Recovery console Allow automatic administrative logon (Windows 10)
description: Best practices, location, values, policy management, and security considerations for the policy setting, Recovery console Allow automatic administrative logon.
ms.assetid: be2498fc-48f4-43f3-ad09-74664e45e596
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

# Recovery console: Allow automatic administrative logon

**Applies to**
-   Windows 11
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Recovery console: Allow automatic administrative logon** security policy setting.

## Reference

This policy setting determines whether the built-in Administrator account password must be provided before access to the device is granted. If you enable this setting, the built-in Administrator account is automatically logged on to the computer at the Recovery Console; no password is required.

The Recovery Console can be useful when troubleshooting and repairing systems that can't be restarted. However, enabling this policy setting so a user can automatically sign in to the console is dangerous. Anyone can walk up to the server, shut it down by disconnecting the power, reboot it, select **Recovery Console** from the **Restart** menu, and then assume full control of the server.

### Possible values

-   Enabled

    The built-in Administrator account is automatically logged on to the computer at the Recovery Console; no password is required

-   Disabled

    Automatic administrative logon isn't allowed.

-   Not defined

    Automatic administrative logon isn't allowed.

### Best practices

-   Set **Recovery Console: Allow automatic administrative logon** to **Disabled**. This setting requires a user to enter a user name and password to access the Recovery Console account.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy| Not defined| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

### Group Policy

Setting and deploying this policy using Group Policy takes precedence over the setting on the local device

### Policy conflicts

None.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The Recovery Console can be useful when you must troubleshoot and repair devices that don't start. However, allowing automatic logon to the Recovery Console can make it possible for someone to assume full control of the server.

### Countermeasure

Disable the **Recovery console: Allow automatic administrative logon** setting.

### Potential impact

Users must enter a user name and password to access the Recovery Console.

## Related topics

- [Security Options](security-options.md)
