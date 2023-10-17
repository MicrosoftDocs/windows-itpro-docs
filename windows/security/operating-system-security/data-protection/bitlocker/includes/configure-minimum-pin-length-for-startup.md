---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Configure minimum PIN length for startup

This policy configures a minimum length for a Trusted Platform Module (TPM) startup PIN. The startup PIN must have a minimum length of 4 digits and can have a maximum length of 20 digits.

If you enable this policy setting, you can require a minimum number of digits to be used when setting the startup PIN.\
If you disable or do not configure this policy setting, users can configure a startup PIN of any length between 6 and 20 digits.

The TPM can be configured to use Dictionary Attack Prevention parameters ([lockout threshold and lockout duration](../../../../hardware-security/tpm/trusted-platform-module-services-group-policy-settings.md) to control how many failed authorizations attempts are allowed before the TPM is locked out, and how much time must elapse before another attempt can be made.

The Dictionary Attack Prevention Parameters provide a way to balance security needs with usability. For example, when BitLocker is used with a TPM + PIN configuration, the number of PIN guesses is limited over time. A TPM 2.0 in this example could be configured to allow only 32 PIN guesses immediately, and then only one more guess every two hours. This number of attempts totals to a maximum of about 4415 guesses per year. If the PIN is four digits, all 9999 possible PIN combinations could be attempted in a little over two years.

> [!TIP]
> Increasing the PIN length requires a greater number of guesses for an attacker. In that case, the lockout duration between each guess can be shortened to allow legitimate users to retry a failed attempt sooner, while maintaining a similar level of protection.

> [!NOTE]
> If minimum PIN length is set below 6 digits, Windows will attempt to update the TPM 2.0 lockout period to be greater than the default when a PIN is changed. If successful, Windows will only reset the TPM lockout period back to default if the TPM is reset.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesMinimumPINLength](/windows/client-management/mdm/bitlocker-csp#systemdrivesminimumpinlength) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
