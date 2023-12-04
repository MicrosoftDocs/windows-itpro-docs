---
title: "Interactive logon: Require Windows Hello for Business or smart card"
description: "Describes the best practices, location, values, policy management, and security considerations for the 'Interactive logon: Require Windows Hello for Business or smart card' security policy setting."
author: vinaypamnani-msft
ms.author: vinpa
manager: aaroncz
ms.reviewer:
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
ms.topic: reference
ms.date: 01/13/2023
---

# Interactive logon: Require Windows Hello for Business or smart card

**Applies to**

- Windows 11
- Windows 10, version 1703 or later

Describes the best practices, location, values, policy management, and security considerations for the **Interactive logon: Require Windows Hello for Business or smart card** security policy setting.

> [!NOTE]
> You may need to download the ADMX template for your version of Windows to apply this policy.

## Reference

The **Interactive logon: Require Windows Hello for Business or smart card** policy setting requires users to sign in to a device by using a smart card or Windows Hello for Business method.

Requiring users to use long, complex passwords for authentication enhances network security, especially if the users must change their passwords regularly. This requirement reduces the chance that a malicious user will be able to guess a user's password through a brute-force attack. Using smart cards rather than passwords for authentication dramatically increases security because, with today's technology, it's nearly impossible for a malicious user to impersonate another user. Smart cards that require personal identification numbers (PINs) provide two-factor authentication: the user who attempts to sign in must possess the smart card and know its PIN. A malicious user who captures the authentication traffic between the user's device and the domain controller will find it difficult to decrypt the traffic: even if they do, the next time the user signs in to the network, a new session key will be generated for encrypting traffic between the user and the domain controller.

### Possible values

- Enabled
- Disabled
- Not defined

### Best practices

- Set **Interactive logon: Require Windows Hello for Business or smart card** to Enabled. All users will have to use smart cards to sign in to the network, or a Windows Hello for Business method. This requirement means that the organization must have a reliable public key infrastructure (PKI) in place, and provide smart cards and smart card readers for all users. For more information about password-less authentication, see [Windows Hello for Business overview](../../identity-protection/hello-for-business/index.md).

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy, by server type or group policy object (GPO). Default values are also listed on the policy's property page.

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

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through group policy.

### Policy conflict considerations

None.

### Group policy

This policy setting can be configured by using the group policy management console (GPMC) to be distributed through GPOs. If this policy isn't contained in a distributed GPO, this policy can be configured on the local computer by using the local security policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

It can be difficult to make users choose strong passwords, and even strong passwords are vulnerable to brute-force attacks if an attacker has sufficient time and computing resources.

### Countermeasure

For users with access to computers that contain sensitive data, issue smart cards to users or configure Windows Hello for Business. Then configure the **Interactive logon: Require Windows Hello for Business or smart card** setting to Enabled.

### Potential effect

All users of a device with this setting enabled must use smart cards or a Windows Hello for Business method to sign in locally. The organization must have a reliable public key infrastructure (PKI), smart cards, and smart card readers for these users, or have enabled Windows Hello for Business. These requirements are significant challenges because expertise and resources are required to plan for and deploy these technologies. Active Directory Certificate Services can be used to implement and manage certificates. You can use automatic user and device enrollment and renewal on the client.

## Related articles

- [Security Options](security-options.md)
- [Windows Hello for Business overview](../../identity-protection/hello-for-business/index.md)
