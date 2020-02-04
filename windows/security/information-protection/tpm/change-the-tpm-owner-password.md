---
title: Change the TPM owner password (Windows 10)
description: This topic for the IT professional describes how to change the password or PIN for the owner of the Trusted Platform Module (TPM) that is installed on your system.
ms.assetid: e43dcff3-acb4-4a92-8816-d6b64b7f2f45
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Change the TPM owner password

**Applies to**
-   Windows 10, version 1511
-   Windows 10, version 1507

This topic for the IT professional describes how to change the password or PIN for the owner of the Trusted Platform Module (TPM) that is installed on your system.

## About the TPM owner password

Starting with Windows 10, version 1607, Windows will not retain the TPM owner password when provisioning the TPM. The password will be set to a random high entropy value and then discarded.

> [!IMPORTANT]
> Although the TPM owner password is not retained starting with Windows 10, version 1607, you can change a default registry key to retain it. However, we strongly recommend that you do not make this change. To retain the TPM owner password, set the registry key 'HKLM\\Software\\Policies\\Microsoft\\TPM' \[REG\_DWORD\] 'OSManagedAuthLevel' to 4. The default value for this key is 2, and unless it is changed to 4 before the TPM is provisioned, the owner password will not be saved.

Only one owner password exists for each TPM. The TPM owner password allows the ability to enable, disable, or clear the TPM without having physical access to the computer, for example, by using the command-line tools remotely. The TPM owner password also allows manipulation of the TPM dictionary attack logic. Taking ownership of the TPM is performed by Windows as part of the provisioning process on each boot. Ownership can change when you share the password or clear your ownership of the TPM so someone else can initialize it.

Without the owner password you can still perform all the preceding actions by means of a physical presence confirmation from UEFI.

### Other TPM management options

Instead of changing your owner password, you can also use the following options to manage your TPM:

-   **Clear the TPM**   If you want to invalidate all of the existing keys that have been created since you took ownership of the TPM, you can clear it. For important precautions for this process, and instructions for completing it, see [Clear all the keys from the TPM](initialize-and-configure-ownership-of-the-tpm.md#clear-all-the-keys-from-the-tpm).

-   **Turn off the TPM**   With TPM 1.2 and Windows 10, versions 1507 and 1511, you can turn off the TPM. Do this if you want to keep all existing keys and data intact and disable the services that are provided by the TPM. For more info, see [Turn off the TPM](initialize-and-configure-ownership-of-the-tpm.md#turn-off-the-tpm).

## Change the TPM owner password

With Windows 10, version 1507 or 1511, if you have opted specifically to preserve the TPM owner password, you can use the saved password to change to a new password.

To change to a new TPM owner password, in TPM.msc, click **Change Owner Password**, and follow the instructions. You will be prompted to provide the owner password file or to type the password. Then you can create a new password, either automatically or manually, and save the password in a file or as a printout.

## Use the TPM cmdlets

You can manage the TPM using Windows PowerShell. For details, see [TPM Cmdlets in Windows PowerShell](https://docs.microsoft.com/powershell/module/trustedplatformmodule).

## Related topics

- [Trusted Platform Module](trusted-platform-module-top-node.md) (list of topics)
