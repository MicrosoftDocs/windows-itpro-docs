---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Configure TPM platform validation profile for BIOS-based firmware configurations

This policy setting determines what values the TPM measures when it validates early boot components before it unlocks an operating system drive on a computer with a BIOS configuration or with UEFI firmware that has the Compatibility Support Module (CSM) enabled.

- When enabled , the boot components that the TPM validates before unlocking access to the BitLocker-encrypted operating system drive can be configured. If any of these components change while BitLocker protection is in effect, then the TPM doesn't release the encryption key to unlock the drive. Instead, the computer displays the BitLocker Recovery console and requires that the recovery password or the recovery key is provided to unlock the drive.
- When disabled or not configured, the TPM uses the default platform validation profile or the platform validation profile that is specified by the setup script.

This policy setting doesn't apply if the computer doesn't have a compatible TPM or if BitLocker has already been turned on with TPM protection.

> [!IMPORTANT]
> This Group Policy setting only applies to computers with BIOS configurations or to computers with UEFI firmware with the CSM enabled. Computers that use a native UEFI firmware configuration store different values in the Platform Configuration Registers (PCRs). Use the **Configure TPM platform validation profile for native UEFI firmware configurations** policy setting to configure the TPM PCR profile for computers that use native UEFI firmware.

A platform validation profile consists of a set of PCR indices that range from 0 to 23. Each PCR index represents a specific measurement that the TPM validates during early boot. The default platform validation profile secures the encryption key against changes to the following PCRs:

|PCR|Description|
|-|-|
|PCR 0|Core root-of-trust for measurement, BIOS, and platform extensions|
|PCR 2|Option ROM code|
|PCR 4|Master Boot Record (MBR) code|
|PCR 8|NTFS boot sector|
|PCR 9|NTFS boot block|
|PCR 10|Boot manager|
|PCR 11|BitLocker access control|

> [!NOTE]
> Changing from the default platform validation profile affects the security and manageability of a computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending on inclusion or exclusion (respectively) of the PCRs.

The following list identifies all of the available PCRs:

|PCR|Description|
|-|-|
| PCR 0 | Core root-of-trust for measurement, BIOS, and platform extensions|
| PCR 1 | Platform and motherboard configuration and data.|
| PCR 2 | Option ROM code|
| PCR 3 | Option ROM data and configuration|
| PCR 4 | Master Boot Record (MBR) code|
| PCR 5 | Master Boot Record (MBR) partition table|
| PCR 6 | State transition and wake events|
| PCR 7 | Computer manufacturer-specific|
| PCR 8 | NTFS boot sector|
| PCR 9 | NTFS boot block|
| PCR 10 | Boot manager|
| PCR 11 | BitLocker access control|
| PCR 12-23 | Reserved for future use |

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
