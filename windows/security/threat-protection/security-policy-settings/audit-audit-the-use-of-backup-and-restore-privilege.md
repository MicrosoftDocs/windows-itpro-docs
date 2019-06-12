---
title: Audit Audit the use of Backup and Restore privilege (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Audit Audit the use of Backup and Restore privilege security policy setting.
ms.assetid: f656a2bb-e8d6-447b-8902-53df3a7756c5
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
ms.date: 04/01/2019
---

# Audit: Audit the use of Backup and Restore privilege

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Audit: Audit the use of Backup and Restore privilege** security policy setting.

## Reference

The **Audit: Audit the use of Backup and Restore privilege** policy setting determines whether to audit the use of all user rights, including Backup and Restore, when the **Audit privilege use** policy setting is configured. Enabling both policy settings generates an audit event for every file that is backed up or restored.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

-   Set **Audit: Audit the use of Backup and Restore privilege** to Disabled. Enabling this policy setting can generate a large number of security events, which might cause servers to respond slowly and force the security event log to record numerous events of little significance.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined |
| Default Domain Controller Policy | Not defined |
| Stand-Alone Server Default Settings | Disabled | 
| DC Effective Default Settings | Disabled | 
| Member Server Effective Default Settings | Disabled | 
| Client Computer Effective Default Settings | Disabled | 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

### Auditing

Enabling this policy setting in conjunction with the **Audit privilege use** policy setting records any instance of user rights that are being exercised in the security log. If **Audit privilege use** is enabled but **Audit: Audit the use of Backup and Restore privilege** is disabled, when users use backup or restore user rights, those events will not be audited.

Enabling this policy setting when the **Audit privilege use** policy setting is also enabled generates an audit event for every file that is backed up or restored. This can help you to track down an administrator who is accidentally or maliciously restoring data in an unauthorized manner.

Alternately, you can use the advanced audit policy, [Audit Sensitive Privilege Use](../auditing/audit-sensitive-privilege-use.md), which can help you manage the number of events generated.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

When the backup and restore function is used, it creates a copy of the file system that is identical to the target of the backup. Making regular backup and restore volumes is an important part of your incident response plan. However, a malicious user could use a legitimate backup copy to gain access to information or to impersonate a legitimate network resource to compromise your enterprise.

### Countermeasure

Enable the **Audit: Audit the use of Backup and Restore privilege** setting. Alternatively, implement automatic log backup by configuring the **AutoBackupLogFiles** registry key. If you enable this option when the [Audit privilege use](../auditing/basic-audit-privilege-use.md) setting is also enabled, an audit event is generated for every file that is backed up or restored. This information could help you to identify an account that was used to accidentally or maliciously restore data in an unauthorized manner.
For more information about configuring this key, see [Eventlog Key](https://docs.microsoft.com/windows/desktop/EventLog/eventlog-key).

### Potential impact

If you enable this policy setting, a large number of security events could be generated, which could cause servers to respond slowly and force the security event log to record numerous events of little significance. If you increase the security event log size to reduce the chances of a system shutdown, an excessively large log file may affect system performance.

## Related topics

- [Security Options](security-options.md)
 
 
