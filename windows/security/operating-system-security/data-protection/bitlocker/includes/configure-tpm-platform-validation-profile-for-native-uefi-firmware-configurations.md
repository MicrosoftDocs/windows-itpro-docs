---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Configure TPM platform validation profile for native UEFI firmware configurations

This policy setting determines what values the TPM measures when it validates early boot components before unlocking an operating system drive on a computer with native UEFI firmware configurations.

- If you enable this policy setting before turning on BitLocker, you can configure the boot components that the TPM will validate before unlocking access to the BitLocker-encrypted operating system drive. If any of these components change while BitLocker protection is in effect, the TPM will not release the encryption key to unlock the drive and the computer will instead display the BitLocker Recovery console and require that either the recovery password or recovery key be provided to unlock the drive
- If you disable or do not configure this policy setting, BitLocker uses the default platform validation profile for the available hardware or the platform validation profile specified by the setup script

|**Conflicts**|Setting this policy with PCR 7 omitted overrides the **Allow Secure Boot for integrity validation** Group Policy setting, and it prevents BitLocker from using Secure Boot for platform or Boot Configuration Data (BCD) integrity validation. <BR><BR> If an environment uses TPM and Secure Boot for platform integrity checks, this policy is configured. <BR><BR> For more information about PCR 7, see [About the Platform Configuration Register (PCR)](#about-the-platform-configuration-register-pcr) in this article.|

#### Reference: Configure TPM platform validation profile for native UEFI firmware configurations

This policy setting doesn't apply if the computer doesn't have a compatible TPM or if BitLocker is already turned on with TPM protection.

> [!IMPORTANT]
> This group policy setting only applies to computers with a native UEFI firmware configuration. Computers with BIOS or UEFI firmware with a Compatibility Support Module (CSM) enabled store different values in the Platform Configuration Registers (PCRs). Use the **Configure TPM platform validation profile for BIOS-based firmware configurations** Group Policy setting to configure the TPM PCR profile for computers with BIOS configurations or for computers with UEFI firmware with a CSM enabled.

A platform validation profile consists of a set of PCR indices ranging from 0 to 23. The default platform validation profile secures the encryption key against changes to the following PCRs:

|PCR|Description|
|-|-|
| PCR 0 | Core System Firmware executable code|
| PCR 2 | Extended or pluggable executable code|
| PCR 4 | Boot Manager|
| PCR 11 | BitLocker access control|

> [!NOTE]
> When Secure Boot State (PCR7) support is available, the default platform validation profile secures the encryption key using Secure Boot State (PCR 7) and the BitLocker access control (PCR 11).

The following list identifies all of the available PCRs:

|PCR|Description|
|-|-|
| PCR 0 | Core System Firmware executable code|
| PCR 1 | Core System Firmware data|
| PCR 2 | Extended or pluggable executable code|
| PCR 3 | Extended or pluggable firmware data|
| PCR 4 | Boot Manager|
| PCR 5 | GPT/Partition Table|
| PCR 6 | Resume from S4 and S5 Power State Events|
| PCR 7 | Secure Boot State|
| PCR 8 | Initialized to 0 with no Extends (reserved for future use)|
| PCR 9 | Initialized to 0 with no Extends (reserved for future use)|
| PCR 10 | Initialized to 0 with no Extends (reserved for future use)|
| PCR 11 | BitLocker access control|
| PCR 12 | Data events and highly volatile events|
| PCR 13 | Boot Module Details|
| PCR 14 | Boot Authorities|
| PCR 15 - 23 | Reserved for future use

> [!WARNING]
> Changing from the default platform validation profile affects the security and manageability of a computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending on inclusion or exclusion (respectively) of the PCRs.
>
> Setting this policy with PCR 7 omitted, will override the *Allow Secure Boot for integrity validation* policy, preventing BitLocker from using Secure Boot for platform or Boot Configuration Data (BCD) integrity validation.
>
> Setting this policy may result in BitLocker recovery when firmware is updated. If you set this policy to include PCR 0, suspend BitLocker prior to applying firmware updates. It is recommended to not configure this policy, to allow Windows to select the PCR profile for the best combination of security and usability based on the available hardware on each device.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
