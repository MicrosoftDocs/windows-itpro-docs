---
author: paolomatarazzo
ms.author: paoloma
ms.date: 07/18/2024
ms.topic: include
---

### Allow Secure Boot for integrity validation

This policy setting allows you to configure whether Secure Boot is allowed as the platform integrity provider for BitLocker operating system drives.

Secure Boot ensures that the device's preboot environment only loads firmware that is digitally signed by authorized software publishers.

- If you enable or don't configure this policy setting, BitLocker uses Secure Boot for platform integrity if the platform is capable of Secure Boot-based integrity validation
- If you disable this policy setting, BitLocker uses legacy platform integrity validation, even on systems capable of Secure Boot-based integrity validation

When this policy is enabled and the hardware is capable of using Secure Boot for BitLocker scenarios, the *[Use enhanced Boot Configuration Data validation profile](../configure.md?tabs=os#use-enhanced-boot-configuration-data-validation-profile)* policy setting is ignored and Secure Boot verifies BCD settings according to the Secure Boot policy setting, which is configured separately from BitLocker.

> [!NOTE]
> If the policy setting *[Configure TPM platform validation profile for native UEFI firmware configurations](../configure.md?tabs=os#configure-tpm-platform-validation-profile-for-native-uefi-firmware-configurations)* is enabled and has PCR 7 omitted, BitLocker is prevented from using Secure Boot for platform or Boot Configuration Data (BCD) integrity validation.

> [!WARNING]
> Disabling this policy might result in BitLocker recovery when manufacturer-specific firmware is updated. If this policy is disabled, suspend BitLocker prior to applying firmware updates.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating System Drives** |
