---
title: Interactive logon Machine inactivity limit (Windows 10)
description: Describes the best practices, location, values, management, and security considerations for the Interactive logon Machine inactivity limit security policy setting.
ms.assetid: 7065b4a9-0d52-41d5-afc4-5aedfc4162b5
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
ms.collection: 
  - highpri
  - tier3
ms.topic: conceptual
ms.date: 09/18/2018
ms.technology: itpro-security
---

# Interactive logon: Machine inactivity limit

**Applies to**
-   Windows 11
-   Windows 10

Describes the best practices, location, values, management, and security considerations for the **Interactive logon: Machine inactivity limit** security policy setting.

## Reference

Beginning with Windows Server 2012 and Windows 8, Windows detects user-input inactivity of a sign-in (logon) session by using the security policy setting **Interactive logon: Machine inactivity limit**. If the amount of inactive time exceeds the inactivity limit set by this policy, then the user's session locks by invoking the screen saver (screen saver should be active on the destination machine). You can activate the screen saver by enabling the Group Policy **User Configuration\Administrative Templates\Control Panel\Personalization\Enable screen saver**. This policy setting allows you to control the locking time by using Group Policy.

> [!NOTE]
> If the **Interactive logon: Machine inactivity limit** security policy setting is configured, the device locks not only when inactive time exceeds the inactivity limit, but also when the screensaver activates or when the display turns off because of power settings.

### Possible values

The automatic lock of the device is set in elapsed seconds of inactivity, which can range from zero (0) to 599,940 seconds (166.65 hours).

If **Machine will be locked after** is set to zero (0) or has no value (blank), the policy setting is disabled and a user sign-in session is never locked after any inactivity.

### Best practices

Set the time for elapsed user-input inactivity based on the device's usage and location requirements. For example, if the device or device is in a public area, you might want to have the device automatically lock after a short period of inactivity to prevent unauthorized access. However, if the device is used by an individual or group of trusted individuals, such as in a restricted manufacturing area, automatically locking the device might hinder productivity.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Local Policies\\Security Options (While creating and linking group policy on server)

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy's property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

Restart is required for changes to this policy to become effective when they're saved locally or distributed through Group Policy.

### Group Policy

Because this policy setting was introduced in Windows Server 2012 and Windows 8, it can only be set locally on those computers that contain this policy setting, but it can be set and distributed through Group Policy to any computer running the Windows operating system that supports Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

This policy setting helps you prevent unauthorized access to devices under your control when the currently signed-in user leaves without deliberately locking the desktop. In versions earlier than Windows Server 2012 and Windows 8, the desktop-locking mechanism was set on individual computers in Personalization in Control Panel.

### Countermeasure

Set the time for elapsed user-input inactivity time by using the security policy setting **Interactive logon: Machine inactivity limit** based on the device's usage and location requirements.

### Potential impact

This security policy setting can limit unauthorized access to unsecured computers; however, that requirement must be balanced with the productivity requirements of the intended user.

## Related topics

- [Security Options](security-options.md)
