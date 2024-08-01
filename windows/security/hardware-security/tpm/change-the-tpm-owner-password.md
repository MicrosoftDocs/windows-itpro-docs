---
title: Change the TPM owner password
description: This article for the IT professional describes how to change the password or PIN for the owner of the Trusted Platform Module (TPM) that is installed on your system.
ms.topic: conceptual
ms.date: 07/10/2024
---

# Change the TPM owner password

This article for the IT professional describes how to change the password or PIN for the owner of the Trusted Platform Module (TPM) that is installed on your system.

## About the TPM owner password

Starting with Windows 10, version 1607, Windows doesn't retain the TPM owner password when provisioning the TPM. The password is set to a random high entropy value and then discarded.

> [!IMPORTANT]
> Although the TPM owner password isn't retained starting with Windows 10, version 1607, you can change a default registry key to retain it. However, we strongly recommend that you don't make this change. To retain the TPM owner password, under the registry key `HKLM\Software\Policies\Microsoft\TPM`, create a `REG_DWORD` value of `OSManagedAuthLevel` and set it to `4`.
>
> For Windows versions newer than Windows 10 1703, the default value for this key is 5. A value of 5 means:
>
> - **TPM 2.0**: Keep the lockout authorization.
> - **TPM 1.2**: Discard the Full TPM owner authorization and retain only the Delegated authorization.
>
> Unless the registry key value is changed from 5 to 4 before the TPM is provisioned, the owner password isn't saved.

Only one owner password exists for each TPM. The TPM owner password allows the ability to enable, disable, or clear the TPM without having physical access to the computer, for example, by using the command-line tools remotely. The TPM owner password also allows manipulation of the TPM dictionary attack logic. Windows takes ownership of the TPM as part of the provisioning process on each boot. Ownership can change when you share the password or clear your ownership of the TPM so someone else can initialize it.

Without the owner password, you can still perform all the preceding actions with a physical presence confirmation from UEFI.

### Other TPM management options

Instead of changing your owner password, you can also use the following options to manage your TPM:

- **Clear the TPM** - If you want to invalidate all of the existing keys that have been created since you took ownership of the TPM, you can clear it. For important precautions for this process, and instructions for completing it, see [Clear all the keys from the TPM](initialize-and-configure-ownership-of-the-tpm.md#clear-all-the-keys-from-the-tpm).
- **Turn off the TPM** - With TPM 1.2 and Windows 10, versions 1507 and 1511, you can turn off the TPM. Turn off the TPM if you want to keep all existing keys and data intact and disable the services that are provided by the TPM. For more info, see [Turn off the TPM](initialize-and-configure-ownership-of-the-tpm.md#turn-off-the-tpm).

## Changing the TPM owner password

With Windows 10, version 1507 or 1511, if you have opted specifically to preserve the TPM owner password, you can use the saved password to change to a new password.

To change to a new TPM owner password, in `TPM.msc`, select **Change Owner Password**, and follow the instructions. It prompts to provide the owner password file or to type the password. Then you can create a new password, either automatically or manually, and save the password in a file or as a printout.

## Use the TPM cmdlets

You can manage the TPM using Windows PowerShell. For details, see [TPM Cmdlets in Windows PowerShell](/powershell/module/trustedplatformmodule).
