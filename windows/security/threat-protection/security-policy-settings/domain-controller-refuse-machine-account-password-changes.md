---
title: Refuse machine account password changes policy
description: Describes the best practices, location, values, and security considerations for the Domain controller Refuse machine account password changes security policy setting.
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
ms.topic: conceptual
ms.technology: itpro-security
ms.date: 12/31/2017
---

# Domain controller: Refuse machine account password changes

**Applies to**
- Windows Server

Describes the best practices, location, values, and security considerations for the **Domain controller: Refuse machine account password changes** security policy setting.

## Reference

This policy setting enables or disables blocking a domain controller from accepting password change requests for machine accounts. By default, devices joined to the domain change their machine account passwords every 30 days. If enabled, the domain controller will refuse machine account password change requests.

### Possible values

-   **Enabled** When enabled, this setting doesn't allow a domain controller to accept any changes to a machine account's password.

-   **Disabled** When disabled, this setting allows a domain controller to accept any changes to a machine account's password.

-   **Not defined** Same as Disabled.

### Best practices

-   Enabling this policy setting on all domain controllers in a domain prevents domain members from changing their machine account passwords. This prevention, in turn, leaves those passwords susceptible to attack. Ensure that this setting conforms to your overall security policy for the domain.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

The policy referenced configures the following registry value:

Registry Hive: HKEY_LOCAL_MACHINE
Registry Path: \System\CurrentControlSet\Services\Netlogon\Parameters\

Value Name: RefusePasswordChange

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
|---|---|
| Default Domain Policy | Not defined | 
| Default Domain Controller Policy | Not defined | 
| Stand-Alone Server Default Settings | Not defined | 
| DC Effective Default Settings | Disabled | 
| Member Server Effective Default Settings | Disabled | 
| Client Computer Effective Default Settings | Not applicable | 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If you enable this policy setting on all domain controllers in a domain, domain members can't change their machine account passwords, and those passwords are more susceptible to attack.

### Countermeasure

Disable the **Domain controller: Refuse machine account password changes** setting.

### Potential impact

None. This non-impact state is the default configuration.

## Related topics

- [Security Options](security-options.md)
