---
title: System cryptography Use FIPS compliant algorithms for encryption, hashing, and signing 
description: Best practices, security considerations, and more for the policy setting System cryptography Use FIPS compliant algorithms for encryption, hashing, and signing
ms.assetid: 83988865-dc0f-45eb-90d1-ee33495eb045
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
ms.topic: conceptual
ms.date: 11/16/2018
ms.technology: itpro-security
---

# System cryptography: Use FIPS compliant algorithms for encryption, hashing, and signing

**Applies to**
-   Windows 11
-   Windows 10

This security policy reference topic for the IT professional describes the best practices, location, values, policy management and security considerations for this policy setting.

## Reference

The Federal Information Processing Standard (FIPS) 140 is a security implementation that is designed for certifying cryptographic software. Windows implements these certified algorithms to meet the requirements and standards for cryptographic modules for use by departments and agencies of the 
United States federal government.

**TLS/SSL**

This policy setting determines whether the TLS/SSL security provider supports only the FIPS-compliant strong cipher suite known as TLS\_RSA\_WITH\_3DES\_EDE\_CBC\_SHA, which means that the provider only supports the TLS protocol as a client computer and as a server, if applicable. It uses only the 
Triple Data Encryption Standard (3DES) encryption algorithm for the TLS traffic encryption, only the Rivest-Shamir-Adleman (RSA) public key algorithm for the TLS key exchange and authentication, and only the Secure Hash Algorithm version 1 (SHA-1) hashing algorithm for the TLS hashing requirements.

**Encrypting File System (EFS)**

For the EFS service, this policy setting supports the 3DES and Advanced Encryption Standard (AES) encryption algorithms for encrypting file data supported by the NTFS file system. To encrypt file data, by default EFS uses the Advanced Encryption Standard (AES) algorithm with a 256-bit key in the Windows Server 2003, Windows Vista, and later, and it uses a DESX algorithm in Windows XP.

**Remote Desktop Services (RDS)**

If you're using Remote Desktop Services, this policy setting should only be enabled if the 3DES encryption algorithm is supported.

**BitLocker**

For BitLocker, this policy setting needs to be enabled before any encryption key is generated.
Recovery passwords created on Windows Server 2012 R2 and Windows 8.1 and later when this policy is enabled are incompatible with BitLocker on operating systems prior to Windows Server 2012 R2 and Windows 8.1; BitLocker will prevent the creation or use of recovery passwords on these systems, so recovery keys should be used instead.
Additionally, if a data drive is password-protected, it can be accessed by a FIPS-compliant computer after the password is supplied, but the drive will be read-only.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

We recommend that customers hoping to comply with FIPS 140-2 research the configuration settings of applications and protocols they may be using to ensure their solutions can be configured to utilize the FIPS 140-2 validated cryptography provided by Windows when it's operating in FIPS 140-2 approved mode.

For a complete list of Microsoft-recommended configuration settings, see [Windows security baselines](../../operating-system-security/device-management/windows-security-configuration-framework/windows-security-baselines.md). For more information about Windows and FIPS 140-2, see [FIPS 140 Validation](../fips-140-validation.md).

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
### Operating system version differences

When this setting is enabled, the Encrypting File System (EFS) service supports only the Triple DES encryption algorithm for encrypting file data. By default, the Windows Vista and the Windows Server 2003 implementation of EFS uses the Advanced Encryption Standard (AES) with a 256-bit key. The Windows XP implementation uses DESX.

When this setting is enabled, BitLocker generates recovery password or recovery keys applicable to the following versions:

| Operating systems | Applicability |
| - | - |
| Windows 10, Windows 8.1, and Windows Server 2012 R2| When created on these operating systems, the recovery password can't be used on other systems listed in this table.| 
| Windows Server 2012 and Windows 8 | When created on these operating systems, the recovery key can be used on other systems listed in this table as well.| 
| Windows Server 2008 R2 and Windows 7 | When created on these operating systems, the recovery key can be used on other systems listed in this table as well.| 
| Windows Server 2008 and Windows Vista | When created on these operating systems, the recovery key can be used on other systems listed in this table as well.| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

### Group Policy

Setting and deploying this policy using Group Policy takes precedence over the setting on the local device. If the Group Policy is set to **Not Configured**, local settings will apply.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

You can enable this policy setting to ensure that the device uses the most powerful algorithms that are available for digital encryption, hashing, and signing. Use of these algorithms minimize the risk of compromise of digitally encrypted or signed data by an unauthorized user.

### Countermeasure

Enable the **System cryptography: Use FIPS compliant algorithms for encryption, hashing, and signing** setting.

### Potential impact

Client devices that have this policy setting enabled can't communicate through digitally encrypted or signed protocols with servers that don't support these algorithms. Network clients that don't support these algorithms can't use servers that require them for network communications. For example, many Apache-based Web servers aren't configured to support TLS. If you enable this setting, you must also configure Internet Explorer® to use TLS. This policy setting also affects the encryption level that is used for the Remote Desktop Protocol (RDP). The Remote Desktop Connection tool 
uses the RDP protocol to communicate with servers that run Terminal Services and client computers that are configured for remote control; RDP connections fail if both devices aren't configured to use the same encryption algorithms.

## Related topics

- [Security Options](security-options.md)
