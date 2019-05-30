---
title: Audit Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Audit Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings security policy setting.
ms.assetid: 8ddc06bc-b6d6-4bac-9051-e0d77035bd4e
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

# Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings** security policy setting.

## Reference

You can manage your audit policy in a more precise way by using audit policy subcategories.

There are over 40 auditing subcategories that provide precise details about activities on a device. For info about these subcategories, see the [Advanced security audit policy settings](../auditing/advanced-security-audit-policy-settings.md).

### Possible values

-   Enabled
-   Disabled

### Best practices

-   Leave the setting enabled. This provides the ability to audit events at the category level without revising a policy.

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

### Group Policy

All auditing capabilities are integrated in Group Policy. You can configure, deploy, and manage these settings in the Group Policy Management Console (GPMC) or Local Security Policy snap-in for a domain, site, or organizational unit (OU).

### Auditing

To manage an audit policy by using subcategories without requiring a change to Group Policy, the SCENoApplyLegacyAuditPolicy registry value , prevents the application of category-level audit policy from Group Policy and from the Local Security Policy administrative tool.

If the category level audit policy that is set here is not consistent with the events that are currently being generated, the cause might be that this registry key is set.

### Command-line tools

You can use auditpol.exe to display and manage audit policies from a command prompt.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Prior to the introduction of auditing subcategories in Windows Vista, it was difficult to track events at a per-system or per-user level. The larger event categories created too many events, and the key information that needed to be audited was difficult to find.

### Countermeasure

Enable audit policy subcategories as needed to track specific events.

### Potential impacts

If you attempt to modify an audit setting by using Group Policy after enabling this setting through the command-line tools, the Group Policy audit setting is ignored in favor of the custom policy setting. To modify audit settings by using Group Policy, you must first disable the 
**SCENoApplyLegacyAuditPolicy** key.
> **Important:**  Be very cautious about audit settings that can generate a large volume of traffic. For example, if you enable success or failure auditing for all of the Privilege Use subcategories, the high volume of audit events that are generated can make it difficult to find other types of entries in the security event log. Such a configuration could also have a significant impact on system performance.
 
## Related topics

- [Security Options](security-options.md)
 
 
