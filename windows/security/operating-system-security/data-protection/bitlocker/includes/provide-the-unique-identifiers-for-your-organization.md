---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Provide the unique identifiers for your organization

This policy setting allows you to associate unique organizational identifiers to a drive that is encrypted with BitLocker. The identifiers are stored as the *identification field* and *allowed identification field*:

- The identification field allows you to associate a unique organizational identifier to BitLocker-protected drives. This identifier is automatically added to new BitLocker-protected drives and can be updated on existing BitLocker-protected drives using the *BitLocker Drive Encryption: Configuration Tool* (`manage-bde.exe`)
- The allowed identification field is used in combination with the *[Deny write access to removable drives not protected by BitLocker](../policy-settings.md?tabs=removable##deny-write-access-to-removable-drives-not-protected-by-bitlocker)*  policy setting to help control the use of removable drives in your organization. It's a comma separated list of identification fields from your organization or other external organizations. You can configure the identification fields on existing drives by using `manage-bde.exe`.

If you enable this policy setting, you can configure the identification field on the BitLocker-protected drive and any allowed identification field used by your organization. When a BitLocker-protected drive is mounted on another BitLocker-enabled device, the identification field and allowed identification field are used to determine whether the drive is from a different organization.

If you disable or don't configure this policy setting, the identification field is not required.

> [!IMPORTANT]
> Identification fields are required for management of certificate-based data recovery agents on BitLocker-protected drives. BitLocker only manages and updates certificate-based data recovery agents when the identification field is present on a drive and is identical to the value configured on the device. The identification field can be any value of 260 characters or fewer.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[IdentificationField](/windows/client-management/mdm/bitlocker-csp#identificationfield) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |
