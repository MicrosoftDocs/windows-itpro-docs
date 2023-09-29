---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Require additional authentication at startup

This policy setting configures whether BitLocker requires extra authentication each time the device starts.

If you enable this policy, users can configure advanced startup options in the BitLocker setup wizard.\
If you disable or don't configure this policy setting, users can configure only basic options on computers with a TPM.

> [!NOTE]
> Only one of the additional authentication options can be required at startup, otherwise a policy error occurs.

If you want to use BitLocker on a device without a TPM, select the option **Allow BitLocker without a compatible TPM**. In this mode, either a password or a USB drive is required for startup.\
When using a startup key, the key information used to encrypt the drive is stored on the USB drive, creating a USB key. When the USB key is inserted, the access to the drive is authenticated and the drive is accessible. If the USB key is lost or unavailable, or if you have forgotten the password, then you must use one of the BitLocker recovery options to access the drive.

On a computer with a compatible TPM, four types of authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can use:

- TPM only
- a USB flash drive containing a startup key
- a PIN (6-digit to 20-digit)
- PIN + USB flash drive

> [!NOTE]
> If you want to require the use of a startup PIN and a USB flash drive, you must configure BitLocker settings using the command-line tool [manage-bde](/windows-server/administration/windows-commands/manage-bde) instead of the BitLocker Drive Encryption setup wizard.

There are four options for TPM-enabled devices:

- Configure TPM startup
  - Allow TPM
  - Require TPM
  - Don't allow TPM

- Configure TPM startup PIN
  - Allow startup PIN with TPM
  - Require startup PIN with TPM
  - Don't allow startup PIN with TPM

- Configure TPM startup key
  - Allow startup key with TPM
  - Require startup key with TPM
  - Don't allow startup key with TPM

- Configure TPM startup key and PIN
  - Allow TPM startup key with PIN
  - Require startup key and PIN with TPM
  - Don't allow TPM startup key with PIN

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesRequireStartupAuthentication](/windows/client-management/mdm/bitlocker-csp#systemdrivesrequirestartupauthentication) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
