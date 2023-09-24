---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Configure minimum PIN length for startup

This policy setting allows you to configure a minimum length for a Trusted Platform Module (TPM) startup PIN. The startup PIN must have a minimum length of 4 digits and can have a maximum length of 20 digits. If you enable this policy setting, you can require a minimum number of digits to be used when setting the startup PIN. If you disable or do not configure this policy setting, users can configure a startup PIN of any length between 6 and 20 digits. NOTE: If minimum PIN length is set below 6 digits, Windows will attempt to update the TPM 2.0 lockout period to be greater than the default when a PIN is changed. If successful, Windows will only reset the TPM lockout period back to default if the TPM is reset.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesMinimumPINLength](/windows/client-management/mdm/bitlocker-csp#systemdrivesminimumpinlength) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
