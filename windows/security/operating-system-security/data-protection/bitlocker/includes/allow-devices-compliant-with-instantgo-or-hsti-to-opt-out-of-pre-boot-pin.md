---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---


### Allow devices compliant with InstantGo or HSTI to opt out of preboot PIN

This policy setting allows users on devices that are compliant with InstantGo or Microsoft Hardware Security Test Interface (HSTI) to not have a PIN for preboot authentication.

The policy overrides the *Require startup PIN with TPM* and *Require startup key and PIN with TPM* options of the [*Require additional authentication at startup*](#require-additional-authentication-at-startup) policy on compliant hardware.

- If you enable this policy setting, users on InstantGo and HSTI compliant devices can turn on BitLocker without preboot authentication
- If the policy is disabled or not configured, the options of [*Require additional authentication at startup*](#require-additional-authentication-at-startup) policy apply

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesEnablePreBootPinExceptionOnDECapableDevice](/windows/client-management/mdm/bitlocker-csp#systemdrivesenableprebootpinexceptionondecapabledevice) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating System Drives** |
