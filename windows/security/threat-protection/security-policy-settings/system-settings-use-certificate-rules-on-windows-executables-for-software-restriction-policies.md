---
title: System settings Use certificate rules on Windows executables for Software Restriction Policies (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the System settings Use certificate rules on Windows executables for Software Restriction Policies security policy setting.
ms.assetid: 2380d93b-b553-4e56-a0c0-d1ef740d089c
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

# System settings: Use certificate rules on Windows executables for Software Restriction Policies

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **System settings: Use certificate rules on Windows executables for Software Restriction Policies** security policy setting.

## Reference

This policy setting determines whether digital certificates are processed when software restriction policies are enabled and a user or process attempts to run software with an .exe file name extension. This security setting enables or disables certificate rules (which are a type of software restriction policy). With a software restriction policy, you can create a certificate rule that allows or disallows Microsoft Authenticode®-signed software to run, based on the digital certificate that is associated with the software. For certificate rules to work in software restriction policies, you must enable this security setting.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   Set this policy to **Enabled**. Enabling certificate rules results in software restriction policies checking a certificate revocation list (CRL) to make sure that the software's certificate and signature are valid. When you start signed programs, this setting can decrease system performance. 
You can disable CRLs by editing the software restriction policies in the desired GPO. In the **Trusted Publishers Properties** dialog box, clear the **Publisher** and **Timestamp** check boxes.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Disabled |
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Without the use of software restriction policies, users and device might be exposed to unauthorized software that could include malware.

### Countermeasure

Enable the **System settings: Use certificate rules on Windows executables for Software Restriction Policies** setting.

### Potential impact

If you enable certificate rules, software restriction policies check a certificate revocation list (CRL) to verify that the software's certificate and signature are valid. This checking process may negatively affect performance when signed programs start. To disable this feature, you can edit the software restriction policies in the appropriate GPO. In the **Trusted Publishers Properties** dialog box, clear the **Publisher** and **Timestamp** check boxes.

## Related topics

- [Security Options](security-options.md)
