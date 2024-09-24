---
title: Personal Data Encryption (PDE)
description: Personal Data Encryption unlocks user encrypted files at user sign-in instead of at boot.
ms.topic: how-to
ms.date: 09/24/2024
---

# Personal Data Encryption (PDE)

Starting in Windows 11, version 22H2, Personal Data Encryption (PDE) is a security feature that provides file-based data encryption capabilities to Windows.

PDE utilizes Windows Hello for Business to link *data encryption keys* with user credentials. When a user signs in to a device using Windows Hello for Business, decryption keys are released, and encrypted data is accessible to the user.\
When a user logs off, decryption keys are discarded and data is inaccessible, even if another user signs into the device.

The use of Windows Hello for Business offers the following advantages:

- It reduces the number of credentials to access encrypted content: users only need to sign-in with Windows Hello for Business
- The accessibility features available when using Windows Hello for Business extend to PDE protected content

PDE differs from BitLocker in that it encrypts files instead of whole volumes and disks. PDE occurs in addition to other encryption methods such as BitLocker.\
Unlike BitLocker that releases data encryption keys at boot, PDE doesn't release data encryption keys until a user signs in using Windows Hello for Business.

## Prerequisites

To use PDE, the following prerequisites must be met:

- Windows 11, version 22H2 and later
- The devices must be [Microsoft Entra joined][AAD-1]. Domain-joined and Microsoft Entra hybrid joined devices aren't supported
- Users must sign in using [Windows Hello for Business](../../../identity-protection/hello-for-business/index.md)

> [!IMPORTANT]
> If you sign in with a password or a [security key][AAD-2], you can't access PDE protected content.

[!INCLUDE [personal-data-encryption-pde](../../../../../includes/licensing/personal-data-encryption-pde.md)]

## PDE protection levels

PDE uses *AES-CBC* with a *256-bit key* to protect content and offers two levels of protection. The level of protection is determined based on the organizational needs. These levels can be set via the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager).

| Item | Level 1 | Level 2 |
|---|---|---|
| PDE protected data accessible when user has signed in via Windows Hello for Business | Yes | Yes |
| PDE protected data is accessible at Windows lock screen | Yes | Data is accessible for one minute after lock, then it's no longer available |
| PDE protected data is accessible after user signs out of Windows | No | No |
| PDE protected data is accessible when device is shut down | No | No |
| PDE protected data is accessible via UNC paths | No | No |
| PDE protected data is accessible when signing with Windows password instead of Windows Hello for Business | No | No |
| PDE protected data is accessible via Remote Desktop session | No | No |
| Decryption keys used by PDE discarded | After user signs out of Windows | One minute after Windows lock screen is engaged or after user signs out of Windows |

## PDE protected content accessibility

When a file is protected with PDE, its icon will show a padlock. If the user hasn't signed in locally with Windows Hello for Business or an unauthorized user attempts to access PDE protected content, they'll be denied access to the content.

Scenarios where a user will be denied access to PDE protected content include:

- User has signed into Windows via a password instead of signing in with Windows Hello for Business biometric or PIN
- If protected via level 2 protection, when the device is locked
- When trying to access content on the device remotely. For example, UNC network paths
- Remote Desktop sessions
- Other users on the device who aren't owners of the content, even if they're signed in via Windows Hello for Business and have permissions to navigate to the PDE protected content

## Differences between PDE and BitLocker

PDE is meant to work alongside BitLocker. PDE isn't a replacement for BitLocker, nor is BitLocker a replacement for PDE. Using both features together provides better security than using either BitLocker or PDE alone. However there are differences between BitLocker and PDE and how they work. These differences are why using them together offers better security.

| Item | PDE | BitLocker |
|--|--|--|
| Release of decryption key | At user sign-in via Windows Hello for Business | At boot |
| Decryption keys discarded | When user signs out of Windows or one minute after Windows lock screen is engaged | At shutdown |
| Protected content | All files in protected folders | Entire volume/drive |
| Authentication to access protected content | Windows Hello for Business | When BitLocker with TPM + PIN is enabled, BitLocker PIN plus Windows sign-in |

## Differences between PDE and EFS

The main difference between protecting files with PDE instead of EFS is the method they use to protect the file. PDE uses Windows Hello for Business to secure the keys that protect the files. EFS uses certificates to secure and protect the files.

To see if a file is protected with PDE or with EFS:

1. Open the properties of the file
1. Under the **General** tab, select **Advanced...**
1. In the **Advanced Attributes** windows, select **Details**

For PDE protected files, under **Protection status:** there will be an item listed as **Personal Data Encryption is:** and it will have the attribute of **On**.

For EFS protected files, under **Users who can access this file:**, there will be a **Certificate thumbprint** next to the users with access to the file. There will also be a section at the bottom labeled **Recovery certificates for this file as defined by recovery policy:**.

Encryption information including what encryption method is being used to protect the file can be obtained with the [`cipher.exe /c`](/windows-server/administration/windows-commands/cipher) command.

## Recommendations for using PDE

The following are recommendations for using PDE:

- Enable [BitLocker Drive Encryption](../bitlocker/index.md). Although PDE works without BitLocker, it's recommended to enable BitLocker. PDE is meant to work alongside BitLocker for increased security at it isn't a replacement for BitLocker
- Backup solution such as [OneDrive in Microsoft 365](/sharepoint/onedrive-overview). In certain scenarios, such as TPM resets or destructive PIN resets, the keys used by PDE to protect content will be lost making any PDE-protected content inaccessible. The only way to recover such content is from a backup. If the files are synced to OneDrive, to regain access you must re-sync OneDrive
- [Windows Hello for Business PIN reset service](../../../identity-protection/hello-for-business/hello-feature-pin-reset.md). Destructive PIN resets will cause keys used by PDE to protect content to be lost, making any content protected with PDE inaccessible. After a destructive PIN reset, content protected with PDE must be recovered from a backup. For this reason, Windows Hello for Business PIN reset service is recommended since it provides non-destructive PIN resets
- [Windows Hello Enhanced Sign-in Security](/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security) offers additional security when authenticating with Windows Hello for Business via biometrics or PIN

## Windows out of box applications that support PDE

Certain Windows applications support PDE out of the box. If PDE is enabled on a device, these applications will utilize PDE:

| App name | Details |
|-|-|
| Mail | Supports protecting both email bodies and attachments|

## Next steps

- Learn about the available options to configure Personal Data Encryption (PDE) and how to configure them via Microsoft Intune or configuration Service Provider (CSP): [PDE settings and configuration](configure.md)
- Review the [Personal Data Encryption (PDE) FAQ](faq.yml)

<!--links used in this document-->

[AAD-1]: /azure/active-directory/devices/concept-azure-ad-join
[AAD-2]: /azure/active-directory/authentication/howto-authentication-passwordless-security-key
