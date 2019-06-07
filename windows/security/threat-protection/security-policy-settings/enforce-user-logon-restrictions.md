---
title: Enforce user logon restrictions (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Enforce user logon restrictions security policy setting.
ms.assetid: 5891cb73-f1ec-48b9-b703-39249e48a29f
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

# Enforce user logon restrictions

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Enforce user logon restrictions** security policy setting.

## Reference

The **Enforce user logon restrictions** policy setting determines whether the Kerberos V5 Key Distribution Center (KDC) validates every request for a session ticket against the user rights policy of the user account. Validating each request for a session ticket is optional because the extra step takes time, and that can slow network access to services.

The possible values for this Group Policy setting are:

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   If this policy setting is disabled, users might be granted session tickets for services that they do not have the right to use.

    We recommend to set **Enforce user logon restrictions** to Enabled.

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Kerberos Policy**

### Default Values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server Type or GPO | Default Value |
| - | - |
| Default Domain Policy | Enabled| 
| Default Domain Controller Policy | Not defined |
| Stand-Alone Server Default Settings| Not applicable |
| DC Effective Default Settings | Enabled| 
| Member Server Effective Default Settings| Not applicable| 
| Client Computer Effective Default Settings | Not applicable| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the device is not required for this policy setting to be effective.

### Group Policy

Client devices will get the new setting during the next scheduled and successful Group Policy refresh. But for domain controllers to assign these new settings immediately, a gpupdate.exe /force is required. On the local device, the Security Configuration Engine will refresh this setting in about five minutes.

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If you disable this policy setting, users could receive session tickets for services that they no longer have the right to use because the right was removed after they logged on.

### Countermeasure

Enable the **Enforce user logon restrictions** setting.

### Potential impact

None. This is the default configuration.

## Related topics

- [Kerberos Policy](kerberos-policy.md)
