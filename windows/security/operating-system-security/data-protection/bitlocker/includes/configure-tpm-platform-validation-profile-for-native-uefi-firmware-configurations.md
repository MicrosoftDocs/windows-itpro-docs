---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Configure TPM platform validation profile for native UEFI firmware configurations

This policy setting determines what values the TPM measures when it validates early boot components, before unlocking the OS drive on native-UEFI firmware device.

- If you enable this policy setting before turning on BitLocker, you can configure the boot components that the TPM validates before unlocking access to the BitLocker-encrypted OS drive. If any of these components change while BitLocker protection is in effect, the TPM doesn't release the encryption key to unlock the drive. The device displays the BitLocker Recovery console and requires that either the recovery password or recovery key be provided to unlock the drive
- If you disable or do not configure this policy setting, BitLocker uses the default platform validation profile for the available hardware, or the platform validation profile specified by the setup script

> [!IMPORTANT]
> This policy setting only applies to devices with a native UEFI firmware configuration. Computers with BIOS or UEFI firmware with a Compatibility Support Module (CSM) enabled store different values in the Platform Configuration Registers (PCRs). Use the **[Configure TPM platform validation profile for BIOS-based firmware configurations](../configure.md?tabs=os#configure-tpm-platform-validation-profile-for-bios-based-firmware-configurations)** policy setting to configure the TPM PCR profile for devices with BIOS configurations, or for devices with UEFI firmware with a CSM enabled.

A platform validation profile consists of a set of PCR indices ranging from 0 to 23. The default platform validation profile secures the encryption key against changes to the following PCRs:

|PCR|Description|
|-|-|
| PCR 0 | Core System Firmware executable code|
| PCR 2 | Extended or pluggable executable code|
| PCR 4 | Boot Manager|
| PCR 11 | BitLocker access control|

> [!NOTE]
> When Secure Boot State (PCR7) support is available, the default platform validation profile secures the encryption key using Secure Boot State (PCR 7) and the BitLocker access control (PCR 11).
>
> To prevent boot manger roll-back attacks, Windows updates released on and after July 2024 changed the default PCR Validation Profile for **UEFI with Secure Boot** from `7, 11` to `4, 7, 11`.

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
> Changing from the default platform validation profile affects the security and manageability of a device. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending on inclusion or exclusion (respectively) of the PCRs.
>
> Setting this policy with PCR 7 omitted, overrides the *[Allow Secure Boot for integrity validation](../configure.md?tabs=os#allow-secure-boot-for-integrity-validation)* policy, preventing BitLocker from using Secure Boot for platform or Boot Configuration Data (BCD) integrity validation.
>
> Setting this policy may result in BitLocker recovery when firmware is updated. If you set this policy to include PCR 0, suspend BitLocker prior to applying firmware updates. It is recommended to not configure this policy, to allow Windows to select the PCR profile for the best combination of security and usability based on the available hardware on each device.

PCR 7 measures the state of Secure Boot. With PCR 7, BitLocker can use Secure Boot for integrity validation. Secure Boot ensures that the computer's preboot environment loads only firmware that is digitally signed by authorized software publishers. PCR 7 measurements indicate whether Secure Boot is on, and which keys are trusted on the platform. If Secure Boot is on and the firmware measures PCR 7 correctly per the UEFI specification, BitLocker can bind to this information rather than to PCRs 0, 2, and 4, which have the measurements of the exact firmware and Bootmgr images loaded. This process reduces the likelihood of BitLocker starting in recovery mode as a result of firmware and image updates, and it provides with greater flexibility to manage the preboot configuration.

PCR 7 measurements must follow the guidance that is described in [Appendix A Trusted Execution Environment EFI Protocol](/windows-hardware/test/hlk/testref/trusted-execution-environment-efi-protocol).

PCR 7 measurements are a mandatory logo requirement for systems that support Modern Standby (also known as Always On, Always Connected PCs). On such systems, if the TPM with PCR 7 measurement and secure boot are correctly configured, BitLocker binds to PCR 7 and PCR 11 by default.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating System Drives** |
