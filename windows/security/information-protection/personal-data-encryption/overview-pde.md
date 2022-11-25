---
title: Personal Data Encryption (PDE)
description: Personal Data Encryption unlocks user encrypted files at user sign-in instead of at boot.
author: frankroj
ms.author: frankroj
ms.reviewer: rafals
manager: aaroncz
ms.topic: how-to
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
ms.date: 09/22/2022
---

<!-- Max 5963468 OS 32516487 -->

# Personal Data Encryption (PDE)

(*Applies to: Windows 11, version 22H2 and later Enterprise and Education editions*)

[!INCLUDE [Personal Data Encryption (PDE) description](includes/pde-description.md)]

## Prerequisites

### **Required**
  - [Azure AD joined device](/azure/active-directory/devices/concept-azure-ad-join)
  - [Windows Hello for Business](../../identity-protection/hello-for-business/hello-overview.md)
  - Windows 11, version 22H2 and later Enterprise and Education editions

### **Not supported with PDE**
  - [FIDO/security key authentication](../../identity-protection/hello-for-business/microsoft-compatible-security-key.md)
  - [Winlogon automatic restart sign-on (ARSO)](/windows-server/identity/ad-ds/manage/component-updates/winlogon-automatic-restart-sign-on--arso-)
    -  For information on disabling ARSO via Intune, see [Disable Winlogon automatic restart sign-on (ARSO)](configure-pde-in-intune.md#disable-winlogon-automatic-restart-sign-on-arso)).
  - [Windows Information Protection (WIP)](../windows-information-protection/protect-enterprise-data-using-wip.md)
  - [Hybrid Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join-hybrid)
  - Remote Desktop connections

### **Highly recommended**
  - [BitLocker Drive Encryption](../bitlocker/bitlocker-overview.md) enabled
    - Although PDE will work without BitLocker, it's recommended to also enable BitLocker. PDE is meant to supplement BitLocker and not replace it.
  - Backup solution such as [OneDrive](/onedrive/onedrive)
    - In certain scenarios such as TPM resets or destructive PIN resets, the keys used by PDE to decrypt files can be lost. In such scenarios, any file encrypted with PDE will no longer be accessible. The only way to recover such files would be from backup.
  - [Windows Hello for Business PIN reset service](../../identity-protection/hello-for-business/hello-feature-pin-reset.md)
    - Destructive PIN resets will cause keys used by PDE to decrypt files to be lost. The destructive PIN reset will make any file encrypted with PDE no longer accessible after a destructive PIN reset. Files encrypted with PDE will need to be recovered from a backup after a destructive PIN reset. For this reason Windows Hello for Business PIN reset service is recommended since it provides non-destructive PIN resets.
  - [Windows Hello Enhanced Sign-in Security](/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security)
    - Provides additional security when authenticating with Windows Hello for Business via biometrics or PIN
  - [Kernel and user mode crash dumps disabled](/windows/client-management/mdm/policy-csp-memorydump)
    - Crash dumps can potentially cause the keys used by PDE decrypt files to be exposed. For greatest security, disable kernel and user mode crash dumps. For information on disabling crash dumps via Intune, see [Disable crash dumps](configure-pde-in-intune.md#disable-crash-dumps).
  - [Hibernation disabled](/windows/client-management/mdm/policy-csp-power#power-allowhibernate)
    - Hibernation files can potentially cause the keys used by PDE to decrypt files to be exposed. For greatest security, disable hibernation. For information on disabling crash dumps via Intune, see [Disable hibernation](configure-pde-in-intune.md#disable-hibernation).

## PDE protection levels

PDE uses AES-CBC with a 256-bit key to encrypt files and offers two levels of protection. The level of protection is determined based on the organizational needs. These levels can be set via the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager).

| Item | Level 1 | Level 2 |
|---|---|---|
| Data is accessible when user is signed in | Yes | Yes |
| Data is accessible when user has locked their device | Yes | No |
| Data is accessible after user signs out | No | No |
| Data is accessible when device is shut down | No | No |
| Decryption keys discarded | After user signs out | After user locks device or signs out |

## PDE encrypted files accessibility

When a file is encrypted with PDE, its icon will show a padlock. If the user hasn't signed in locally with Windows Hello for Business or an unauthorized user attempts to access a PDE encrypted file, they'll be denied access to the file.

Scenarios where a user will be denied access to a PDE encrypted file include:

- User has signed into Windows via a password instead of signing in with Windows Hello for Business biometric or PIN.
- If specified via level 2 protection, when the device is locked.
- When trying to access files on the device remotely. For example, UNC network paths.
- Remote Desktop sessions.
- Other users on the device who aren't owners of the file, even if they're signed in via Windows Hello for Business and have permissions to navigate to the PDE encrypted files.

## How to enable PDE

To enable PDE on devices, push an MDM policy to the devices with the following parameters:

- Name: **Personal Data Encryption**
- OMA-URI: **./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption**
- Data type: **Integer**
- Value: **1**

There's also a [PDE CSP](/windows/client-management/mdm/personaldataencryption-csp) available for MDM solutions that support it.

> [!NOTE]
> Enabling the PDE policy on devices only enables the PDE feature. It does not encrypt any files. To encrypt files, use the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager) to create custom applications and scripts to specify which files to encrypt and at what level to encrypt the files. Additionally, files will not encrypt via the APIs until this policy has been enabled.

For information on enabling PDE via Intune, see [Enable Personal Data Encryption (PDE)](configure-pde-in-intune.md#enable-personal-data-encryption-pde).

## Differences between PDE and BitLocker

| Item | PDE | BitLocker |
|--|--|--|
| Release of key | At user sign-in via Windows Hello for Business | At boot |
| Keys discarded | At user sign-out | At reboot |
| Files encrypted | Individual specified files | Entire volume/drive |
| Authentication to access encrypted file | Windows Hello for Business | When BitLocker with PIN is enabled, BitLocker PIN plus Windows sign in |
| Accessibility | Windows Hello for Business is accessibility friendly | BitLocker with PIN doesn't have accessibility features |

## Differences between PDE and EFS

The main difference between encrypting files with PDE instead of EFS is the method they use to encrypt the file. PDE uses Windows Hello for Business to secure the keys to decrypt the files. EFS uses certificates to secure and encrypt the files.

To see if a file is encrypted with PDE or EFS:

1. Open the properties of the file
2. Under the **General** tab, select **Advanced...**
3. In the **Advanced Attributes** windows, select **Details**

For PDE encrypted files, under **Protection status:** there will be an item listed as **Personal Data Encryption is:** and it will have the attribute of **On**.

For EFS encrypted files, under **Users who can access this file:**, there will be a **Certificate thumbprint** next to the users with access to the file. There will also be a section at the bottom labeled **Recovery certificates for this file as defined by recovery policy:**.

Encryption information including what encryption method is being used can be obtained with the command line `cipher.exe /c` command.

## Disable PDE and decrypt files

Currently there's no method to disable PDE via MDM policy. However, in certain scenarios PDE encrypted files can be decrypted using `cipher.exe` using the following steps:

1. Open the properties of the file
2. Under the **General** tab, select **Advanced...**
3. Uncheck the option **Encrypt contents to secure data**
4. Select **OK**, and then **OK** again

> [!Important]
> Once a user selects to manually decrypt a file, they will not be able to manually encrypt the file again.

## Windows out of box applications that support PDE

Certain Windows applications support PDE out of the box. If PDE is enabled on a device, these applications will utilize PDE.

- Mail
  - Supports encrypting both email bodies and attachments

## See also
- [Personal Data Encryption (PDE) FAQ](faq-pde.yml)
- [Configure Personal Data Encryption (PDE) polices in Intune](configure-pde-in-intune.md)
