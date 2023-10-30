---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Use enhanced Boot Configuration Data validation profile

This policy setting determines specific Boot Configuration Data (BCD) settings to verify during platform validation. A platform validation uses the data in the platform validation profile, which consists of a set of Platform Configuration Register (PCR) indices that range from 0 to 23.

If you don't configure this policy setting, the device will verify the default Windows BCD settings.

> [!NOTE]
> When BitLocker is using Secure Boot for platform and BCD integrity validation, as defined by the *[Allow Secure Boot for integrity validation](../configure.md?tabs=os#allow-secure-boot-for-integrity-validation)* policy setting, this policy setting is ignored. The setting that controls boot debugging `0x16000010` is always validated, and it has no effect if it's included in the inclusion or exclusion list.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
