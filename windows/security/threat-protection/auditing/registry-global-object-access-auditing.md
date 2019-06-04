---
title: Registry (Global Object Access Auditing) (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Registry (Global Object Access Auditing), which enables you to configure a global system access control list (SACL) on the registry of a computer.
ms.assetid: 953bb1c1-3f76-43be-ba17-4aed2304f578
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

# Registry (Global Object Access Auditing)

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Registry (Global Object Access Auditing)**, which enables you to configure a global system access control list (SACL) on the registry of a computer.

If you select the **Configure security** check box on this policy’s property page, you can add a user or group to the global SACL. This enables you to define computer system access control lists (SACLs) per object type for the registry. The specified SACL is then automatically applied to every registry object type.

This policy setting must be used in combination with the **Registry** security policy setting under Object Access. For more info, see [Audit Registry](audit-registry.md).

## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
