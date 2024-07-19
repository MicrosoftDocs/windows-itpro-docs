---
title: TPM Group Policy settings
description: This article describes the Trusted Platform Module (TPM) Services that can be controlled centrally by using Group Policy settings.
ms.topic: conceptual
ms.date: 07/10/2024
---

# TPM Group Policy settings

This article describes the Trusted Platform Module (TPM) Services that can be controlled centrally by using Group Policy settings. The Group Policy settings for TPM services are located under **Computer Configuration** > **Administrative Templates** > **System** > **Trusted Platform Module Services**.

## Configure the list of blocked TPM commands

This policy setting allows you to manage the Group Policy list of Trusted Platform Module (TPM) commands blocked by Windows.

If you enable this policy setting, Windows blocks the specified commands from being sent to the TPM on the computer. TPM commands are referenced by a command number. For example, command number `129` is `TPM_OwnerReadInternalPub`, and command number `170` is `TPM_FieldUpgrade`.

If you disable or don't configure this policy setting, only those TPM commands specified through the default or local lists may be blocked by Windows. The default list of blocked TPM commands is preconfigured by Windows. You can view the default list by running `tpm.msc`, navigating to the "Command Management" section, and making visible the "On Default Block List" column. The local list of blocked TPM commands is configured outside of Group Policy by running `tpm.msc` or through scripting against the Win32_Tpm interface.

## Configure the system to clear the TPM if it is not in a ready state

This policy setting configures the system to prompt the user to clear the TPM if the TPM is detected to be in any state other than Ready. This policy takes effect only if the system's TPM is in a state other than Ready, including if the TPM is "Ready, with reduced functionality". The prompt to clear the TPM will start occurring after the next reboot, upon user sign-in only if the logged in user is part of the Administrators group for the system. The prompt can be dismissed, but will reappear after every reboot and sign-in until the policy is disabled or until the TPM is in a Ready state.

## Ignore the default list of blocked TPM commands

This policy setting allows you to enforce or ignore the computer's local list of blocked Trusted Platform Module (TPM) commands.

If you enable this policy setting, Windows ignores the computer's local list of blocked TPM commands and will only block those TPM commands specified by Group Policy or the default list.

The local list of blocked TPM commands is configured outside of Group Policy by running `tpm.msc` or through scripting against the `Win32_Tpm` interface. The default list of blocked TPM commands is preconfigured by Windows. See the related policy setting to configure the Group Policy list of blocked TPM commands.

If you disable or don't configure this policy setting, Windows blocks the TPM commands found in the local list, in addition to commands in the Group Policy and default lists of blocked TPM commands.

## Ignore the local list of blocked TPM commands

This policy setting configures how much of the TPM owner authorization information is stored in the registry of the local computer. Depending on the amount of TPM owner authorization information stored locally, the operating system and TPM-based applications can perform certain TPM actions, which require TPM owner authorization without requiring the user to enter the TPM owner password.

You can choose to have the operating system store either the full TPM owner authorization value, the TPM administrative delegation blob plus the TPM user delegation blob, or none.

If you enable this policy setting, Windows stores the TPM owner authorization in the registry of the local computer according to the operating system managed TPM authentication setting you choose.

Choose the operating system managed TPM authentication setting of "Full" to store the full TPM owner authorization, the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting allows use of the TPM without requiring remote or external storage of the TPM owner authorization value. This setting is appropriate for scenarios, which don't depend on preventing reset of the TPM anti-hammering logic or changing the TPM owner authorization value. Some TPM-based applications may require this setting be changed before features, which depend on the TPM anti-hammering logic can be used.

Choose the operating system managed TPM authentication setting of "Delegated" to store only the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting is appropriate for use with TPM-based applications that depend on the TPM anti-hammering logic.

Choose the operating system managed TPM authentication setting of "None" for compatibility with previous operating systems and applications or for use with scenarios that require TPM owner authorization not be stored locally. Using this setting might cause issues with some TPM-based applications.

> [!NOTE]
> If the operating system managed TPM authentication setting is changed from "Full" to "Delegated", the full TPM owner authorization value is regenerated and any copies of the original TPM owner authorization value are invalidated.

## Configure the level of TPM owner authorization information available to the operating system

> [!IMPORTANT]
> Beginning with Windows 10 version 1703, the default value is 5. This value is implemented during provisioning so that another Windows component can either delete it or take ownership of it, depending on the system configuration. For TPM 2.0, a value of 5 means keep the lockout authorization. For TPM 1.2, it means discard the Full TPM owner authorization and retain only the Delegated authorization.

This policy setting configured which TPM authorization values are stored in the registry of the local computer. Certain authorization values are required in order to allow Windows to perform certain actions.

| TPM 1.2 value        | TPM 2.0 value    | Purpose                                   | Kept at level 0? | Kept at level 2? | Kept at level 4? |
|----------------------|------------------|-------------------------------------------|------------------|------------------|------------------|
| OwnerAuthAdmin       | StorageOwnerAuth | Create SRK                                | No               | Yes              | Yes              |
| OwnerAuthEndorsement | EndorsementAuth  | Create or use EK (1.2 only: Create AIK)   | No               | Yes              | Yes              |
| OwnerAuthFull        | LockoutAuth      | Reset/change Dictionary Attack Protection | No               | No               | Yes              |

There are three TPM owner authentication settings that are managed by the Windows operating system. You can choose a value of **Full**, **Delegate**, or **None**.

- **Full**: This setting stores the full TPM owner authorization, the TPM administrative delegation blob, and the TPM user delegation blob in the local registry. With this setting, you can use the TPM without requiring remote or external storage of the TPM owner authorization value. This setting is appropriate for scenarios that don't require you to reset the TPM anti-hammering logic or change the TPM owner authorization value. Some TPM-based applications may require that this setting is changed before features that depend on the TPM anti-hammering logic can be used. Full owner authorization in TPM 1.2 is similar to lockout authorization in TPM 2.0. Owner authorization has a different meaning for TPM 2.0.

- **Delegated**: This setting stores only the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting is appropriate for use with TPM-based applications that depend on the TPM antihammering logic. This is the default setting in Windows prior to version 1703.

- **None**: This setting provides compatibility with previous operating systems and applications. You can also use it for scenarios when TPM owner authorization can't be stored locally. Using this setting might cause issues with some TPM-based applications.

> [!NOTE]
> If the operating system managed TPM authentication setting is changed from **Full** to **Delegated**, the full TPM owner authorization value will be regenerated, and any copies of the previously set TPM owner authorization value will be invalid.

**Registry information**

Registry key: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\TPM`
DWORD: `OSManagedAuthLevel`

The following table shows the TPM owner authorization values in the registry.

| Value Data | Setting   |
|------------|-----------|
| 0          | None      |
| 2          | Delegated |
| 4          | Full      |

If you enable this policy setting, the Windows operating system stores the TPM owner authorization in the registry of the local computer according to the TPM authentication setting you choose.

On Windows 10 prior to version 1607, if you disable or don't configure this policy setting, and the **Turn on TPM backup to Active Directory Domain Services** policy setting is also disabled or not configured, the default setting is to store the full TPM authorization value in the local registry. If this policy is disabled or not configured, and the **Turn on TPM backup to Active Directory Domain Services** policy setting is enabled, only the administrative delegation and the user delegation blobs are stored in the local registry.

## Standard User Lockout Duration

This policy setting allows you to manage the duration in minutes for counting standard user authorization failures for Trusted Platform Module (TPM) commands requiring authorization. An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response that indicates an authorization failure occurred. Authorization failures that are older than the duration you set are ignored. If the number of TPM commands with an authorization failure within the lockout duration equals a threshold, a standard user is prevented from sending commands that require
authorization to the TPM.

The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode, it's global for all users (including administrators) and for Windows features such as BitLocker Drive Encryption.

This setting helps administrators prevent the TPM hardware from entering a lockout mode by slowing the speed at which standard users can send commands that require authorization to the TPM.

For each standard user, two thresholds apply. Exceeding either threshold prevents the user from sending a command that requires authorization to the TPM. Use the following policy settings to set the lockout duration:

- [Standard User Individual Lockout Threshold](#standard-user-individual-lockout-threshold): This value is the maximum number of authorization failures that each standard user can have before the user isn't allowed to send commands that require authorization to the TPM.
- [Standard User Total Lockout Threshold](#standard-user-total-lockout-threshold): This value is the maximum total number of authorization failures that all standard users can have before all standard users aren't allowed to send commands that require authorization to the TPM.

An administrator with the TPM owner password can fully reset the TPM's hardware lockout logic by using the Windows Defender Security Center. Each time an administrator resets the TPM's hardware lockout logic, all prior standard user TPM authorization failures are ignored. This allows standard users to immediately use the TPM normally.

If you don't configure this policy setting, a default value of 480 minutes (8 hours) is used.

## Standard User Individual Lockout Threshold

This policy setting allows you to manage the maximum number of authorization failures for each standard user for the Trusted Platform Module (TPM). This value is the maximum number of authorization failures that each standard user can have before the user isn't allowed to send commands that require authorization to the TPM. If the number of authorization failures for the user within the duration that is set for the **Standard User Lockout Duration** policy setting equals this value, the standard user is prevented from sending commands that require authorization to the Trusted Platform Module (TPM).

This setting helps administrators prevent the TPM hardware from entering a lockout mode by slowing the speed at which standard users can send commands that require authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than the duration are ignored.

An administrator with the TPM owner password can fully reset the TPM's hardware lockout logic by using the Windows Defender Security Center. Each time an administrator resets the TPM's hardware lockout logic, all prior standard user TPM authorization failures are ignored. This allows standard users to immediately use the TPM normally.

If you don't configure this policy setting, a default value of 4 is used. A value of zero means that the operating system won't allow standard users to send commands to the TPM, which might cause an authorization failure.

## Standard User Total Lockout Threshold

This policy setting allows you to manage the maximum number of authorization failures for all standard users for the Trusted Platform Module (TPM). If the total number of authorization failures for all standard users within the duration that is set for the **Standard User Lockout Duration** policy equals this value, all standard users are prevented from sending commands that require authorization to the Trusted Platform Module (TPM).

This setting helps administrators prevent the TPM hardware from entering a lockout mode because it slows the speed standard users can send commands requiring authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than the duration are ignored.

An administrator with the TPM owner password can fully reset the TPM's hardware lockout logic by using the Windows Defender Security Center. Each time an administrator resets the TPM's hardware lockout logic, all prior standard user TPM authorization failures are ignored. This allows standard users to immediately use the TPM normally.

If you don't configure this policy setting, a default value of 9 is used. A value of zero means that the operating system won't allow standard users to send commands to the TPM, which might cause an authorization failure.

## Configure the system to use legacy Dictionary Attack Prevention Parameters setting for TPM 2.0

Introduced in Windows 10, version 1703, this policy setting configures the TPM to use the Dictionary Attack Prevention Parameters (lockout threshold and recovery time) to the values that were used for Windows 10 Version 1607 and below.

> [!IMPORTANT]
> Setting this policy will take effect only if:
>
> - The TPM was originally prepared using a version of Windows after Windows 10 Version 1607
> - The system has a TPM 2.0.

> [!NOTE]
> Enabling this policy will only take effect after the TPM maintenance task runs (which typically happens after a system restart). Once this policy has been enabled on a system and has taken effect (after a system restart), disabling it will have no impact and the system's TPM will remain configured using the legacy Dictionary Attack Prevention parameters, regardless of the value of this group policy. The only ways for the disabled setting of this policy to take effect on a system where it was once enabled are to either:
>
> -  Disable it from group policy
> -  Clear the TPM on the system

## TPM Group Policy settings in Windows Security

You can change what users see about TPM in **Windows Security**. The Group Policy settings for the TPM area in **Windows Security** are located under **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Security** > **Device security**.

### Disable the Clear TPM button

If you don't want users to be able to select the **Clear TPM** button in **Windows Security**, you can disable it with this Group Policy setting. Select **Enabled** to make the **Clear TPM** button unavailable for use.

### Hide the TPM Firmware Update recommendation

If you don't want users to see the recommendation to update TPM firmware, you can disable it with this setting. Select **Enabled** to prevent users from seeing a recommendation to update their TPM firmware when a vulnerable firmware is detected.

## Related articles

- [TPM Cmdlets in Windows PowerShell](/powershell/module/trustedplatformmodule/?view=win10-ps&preserve-view=true)
- [BitLocker planning guide](../../operating-system-security/data-protection/bitlocker/planning-guide.md)
