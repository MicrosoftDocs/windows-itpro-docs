---
title: Account lockout threshold (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Account lockout threshold security policy setting.
ms.assetid: 4904bb40-a2bd-4fef-a102-260ba8d74e30
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
ms.date: 11/02/2018
---

# Account lockout threshold

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Account lockout threshold** security policy setting.

## Reference

The **Account lockout threshold** policy setting determines the number of failed sign-in attempts that will cause a user account to be locked. A locked account cannot be used until you reset it or until the number of minutes specified by the [Account lockout duration](account-lockout-duration.md) policy setting expires. You can set a value from 1 through 999 failed sign-in attempts, or you can specify that the account will never be locked by setting the value to 0. If **Account lockout threshold** is set to a number greater than zero, **Account lockout duration** must be greater than or equal to the value of [Reset account lockout counter after](reset-account-lockout-counter-after.md).

Brute force password attacks can be automated to try thousands or even millions of password combinations for any or all user accounts. Limiting the number of failed sign-ins that can be performed nearly eliminates the effectiveness of such attacks.
However, it is important to note that a denial-of-service (DoS) attack could be performed on a domain that has an account lockout threshold configured. A malicious user could programmatically attempt a series of password attacks against all users in the organization. If the number of attempts is greater than the value of **Account lockout threshold**, the attacker could potentially lock every account.

Failed attempts to unlock a workstation can cause account lockout even if the [Interactive logon: Require Domain Controller authentication to unlock workstation](interactive-logon-require-domain-controller-authentication-to-unlock-workstation.md) security option is disabled. Windows doesn’t need to contact a domain controller for an unlock if you enter the same password that you logged on with, but if you enter a different password, Windows has to contact a domain controller in case you had changed your password from another machine.

### Possible values

It is possible to configure the following values for the **Account lockout threshold** policy setting:
-   A user-defined number from 0 through 999
-   Not defined

Because vulnerabilities can exist when this value is configured and when it is not, organizations should weigh their identified threats and the risks that they are trying to mitigate. For information these settings, see [Countermeasure](#bkmk-countermeasure) in this topic.

### Best practices

The threshold that you select is a balance between operational efficiency and security, and it depends on your organization's risk level. To allow for user error and to thwart brute force attacks, [Windows security baselines](https://docs.microsoft.com/windows/security/threat-protection/windows-security-baselines) recommend a value of 10 could be an acceptable starting point for your organization.

As with other account lockeout settings, this value is more of a guideline than a rule or best practice because there is no "one size fits all." For more information, see [Configuring Account Lockout](https://blogs.technet.microsoft.com/secguide/2014/08/13/configuring-account-lockout/).

Implementation of this policy setting is dependent on your operational environment; threat vectors, deployed operating systems, and deployed apps. For more information, see [Implementation considerations](#bkmk-impleconsiderations) in this topic.
 
### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Account Lockout Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the property page for the policy setting.

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy | 0 invalid sign-in attempts |
| Default domain controller policy | Not defined |
| Stand-alone server default settings | 0 invalid sign-in attempts |
| Domain controller effective default settings | 0 invalid sign-in attempts |
| Member server effective default settings |0 invalid sign-in attempts |
| Effective GPO default settings on client computers |0 invalid sign-in attempts |
 
### Policy management

This section describes features and tools that are available to help you manage this policy setting.

### Restart requirements

None. Changes to this policy setting become effective without a computer restart when they are saved locally or distributed through Group Policy.

### <a href="" id="bkmk-impleconsiderations"></a>Implementation considerations

Implementation of this policy setting is dependent on your operational environment. You should consider threat vectors, deployed operating systems, and deployed apps, for example:
-   The likelihood of an account theft or a DoS attack is based on the security design for your systems and environment. You should set the account lockout threshold in consideration of the known and perceived risk of those threats.
-   When negotiating encryption types between clients, servers, and domain controllers, the Kerberos protocol can automatically retry account sign-in attempts that count toward the threshold limits that you set in this policy setting. In environments where different versions of the operating system are deployed, encryption type negotiation increases.
-   Not all apps that are used in your environment effectively manage how many times a user can attempt to sign-in. For instance, if a connection drops repeatedly when a user is running the app, all subsequent failed sign-in attempts count toward the account lockout threshold.

For more information about Windows security baseline recommendations for account lockout, see [Configuring Account Lockout](https://blogs.technet.microsoft.com/secguide/2014/08/13/configuring-account-lockout/). 

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Brute force password attacks can use automated methods to try millions of password combinations for any user account. The effectiveness of such attacks can be almost eliminated if you limit the number of failed sign-in attempts that can be performed.
However, a DoS attack could be performed on a domain that has an account lockout threshold configured. An attacker could programmatically attempt a series of password attacks against all users in the organization. If the number of attempts is greater than the account lockout threshold, the attacker might be able to lock every account without needing any special privileges or being authenticated in the network.

> **Note:** Offline password attacks are not countered by this policy setting.
 
### <a href="" id="bkmk-countermeasure"></a>Countermeasure

Because vulnerabilities can exist when this value is configured and when it is not configured, two distinct countermeasures are defined. Organizations should weigh the choice between the two, based on their identified threats and the risks that they want to mitigate. The two countermeasure options are:
-   Configure the **Account lockout threshold** setting to 0. This configuration ensures that accounts will not be locked, and it will prevent a DoS attack that intentionally attempts to lock accounts. This configuration also helps reduce Help Desk calls because users cannot accidentally lock themselves out of their accounts. Because it does not prevent a brute force attack, this configuration should be chosen only if both of the following criteria are explicitly met:
    -   The password policy setting requires all users to have complex passwords of 8 or more characters.
    -   A robust audit mechanism is in place to alert administrators when a series of failed sign-ins occur in the environment.
-   Configure the **Account lockout threshold** policy setting to a sufficiently high value to provide users with the ability to accidentally mistype their password several times before the account is locked, but ensure that a brute force password attack still locks the account.

    [Windows security baselines](https://docs.microsoft.com/windows/security/threat-protection/windows-security-baselines) recommend configuring a threshold of 10 invalid sign-in attempts, which prevents accidental account lockouts and reduces the number of Help Desk calls, but does not prevent a DoS attack.
    Using this type of policy must be accompanied by a process to unlock locked accounts. It must be possible to implement this policy whenever it is needed to help mitigate massive lockouts caused by an attack on your systems.

### Potential impact

If this policy setting is enabled, a locked account is not usable until it is reset by an administrator or until the account lockout duration expires. Enabling this setting will likely generate a number of additional Help Desk calls.

If you configure the **Account lockout threshold** policy setting to 0, there is a possibility that an malicious user's attempt to discover passwords with a brute force password attack might go undetected if a robust audit mechanism is not in place.

If you configure this policy setting to a number greater than 0, an attacker can easily lock any accounts for which the account name is known. This is especially dangerous considering that no credentials other than access to the network are necessary to lock the accounts.

## Related topics
[Account Lockout Policy](account-lockout-policy.md)
 
