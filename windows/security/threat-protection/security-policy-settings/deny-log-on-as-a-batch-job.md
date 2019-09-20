---
title: Deny log on as a batch job (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Deny log on as a batch job security policy setting.
ms.assetid: 0ac36ebd-5e28-4b6a-9b4e-8924c6ecf44b
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

# Deny log on as a batch job

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Deny log on as a batch job** security policy setting.

## Reference

This policy setting determines which accounts are prevented from logging on by using a batch-queue tool to schedule and start jobs automatically in the future. The ability to log on by using a batch-queue tool is needed for any account that is used to start scheduled jobs by means of the Task 
Scheduler.

Constant: SeDenyBatchLogonRight

### Possible values

-   User-defined list of accounts
-   Not defined

### Best practices

1.  When you assign this user right, thoroughly test that the effect is what you intended.
2.  Within a domain, modify this setting on the applicable Group Policy Object (GPO).
3.  **Deny log on as a batch job** prevents administrators or operators from using their personal accounts to schedule tasks, which helps with business continuity when that person transitions to other positions or responsibilities.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined | 
| Stand-Alone Server Default Settings | Not defined | 
| Domain Controller Effective Default Settings | Not defined | 
| Member Server Effective Default Settings | Not defined | 
| Client Computer Effective Default Settings | Not defined | 
 
## Policy management

This section describes features and tools available to help you manage this policy.

A restart of the device is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

This policy setting might conflict with and negate the **Log on as a batch job** setting.

### Group Policy

On a domain-joined device, including the domain controller, this policy can be overwritten by a domain policy, which will prevent you from modifying the local policy setting.

For example, if you are trying to configure Task Scheduler on your domain controller, check the Settings tab of your two domain controller policy and domain policy GPOs in the Group Policy Management Console (GPMC). Verify the targeted account is not present in the **Deny log on as a batch job** 

User Rights Assignment and also correctly configured in the **Log on as a batch job** setting.

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Accounts that have the **Deny log on as a batch job** user right could be used to schedule jobs that could consume excessive computer resources and cause a denial-of-service condition.

### Countermeasure

Assign the **Deny log on as a batch job** user right to the local Guest account.

### Potential impact

If you assign the **Deny log on as a batch job** user right to other accounts, you could deny the ability to perform required job activities to users who are assigned specific administrative roles. You should confirm that delegated tasks are not affected adversely.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
