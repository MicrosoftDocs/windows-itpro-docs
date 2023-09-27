---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Allow warning for other disk encryption

With this policy you can disable all notification for encryption, warning prompt for other disk encryption, and turn on encryption silently.

> [!IMPORTANT]
> This policy applies to Microsoft Entra joined devices only.

This policy takes effect only if [Require device encryption](../policy-settings.md?tabs=os#require-device-encryption) policy is enabled.

> [!WARNING]
> When you enable BitLocker on a device with third party encryption, it may render the device unusable and will require reinstallation of Windows.

The expected values for this policy are:

- Enabled (default): warning prompt and encryption notification is allowed
- Disabled: warning prompt and encryption notification are suppressed. Windows will attempt to silently enable BitLocker

> [!NOTE]
> When you disable the warning prompt, the OS drive's recovery key will back up to the user's Microsoft Entra ID account. When you allow the warning prompt, the user who receives the prompt can select where to back up the OS drive's recovery key.
>
> The endpoint for a fixed data drive's backup is chosen in the following order:
>
> 1. The user's Windows Server Active Directory Domain Services account
> 2. The user's Microsoft Entra ID account
> 3. The user's personal OneDrive (MDM/MAM only)
>
> Encryption will wait until one of these three locations backs up successfully.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[AllowWarningForOtherDiskEncryption](/windows/client-management/mdm/bitlocker-csp#allowwarningforotherdiskencryption) |
| **GPO** | Not available |
