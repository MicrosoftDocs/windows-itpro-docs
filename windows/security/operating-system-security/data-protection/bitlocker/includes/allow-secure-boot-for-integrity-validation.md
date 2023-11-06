---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Allow Secure Boot for integrity validation

This policy setting allows you to configure whether Secure Boot will be allowed as the platform integrity provider for BitLocker operating system drives. Secure Boot ensures that the PC's pre-boot environment only loads firmware that is digitally signed by authorized software publishers. Secure Boot also provides more flexibility for managing pre-boot configuration than legacy BitLocker integrity checks. If you enable or do not configure this policy setting, BitLocker will use Secure Boot for platform integrity if the platform is capable of Secure Boot-based integrity validation. If you disable this policy setting, BitLocker will use legacy platform integrity validation, even on systems capable of Secure Boot-based integrity validation. When this policy is enabled and the hardware is capable of using Secure Boot for BitLocker scenarios, the "Use enhanced Boot Configuration Data validation profile" group policy setting is ignored and Secure Boot verifies BCD settings according to the Secure Boot policy setting, which is configured separately from BitLocker. Note: If the group policy setting "Configure TPM platform validation profile for native UEFI firmware configurations" is enabled and has PCR 7 omitted, Bitlocker will be prevented from using Secure Boot for platform or Boot Configuration Data (BCD) integrity validation. Warning: Disabling this policy may result in BitLocker recovery when firmware is updated. If you disable this policy, suspend BitLocker prior to applying firmware updates.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating System Drives** |
