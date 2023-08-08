---
title: Personal Data Encryption (PDE)
description: Personal Data Encryption unlocks user encrypted files at user sign-in instead of at boot.
ms.topic: how-to
ms.date: 03/13/2023
---

# Personal Data Encryption (PDE)

[!INCLUDE [Personal Data Encryption (PDE) description](includes/pde-description.md)]

[!INCLUDE [personal-data-encryption-pde](../../../../../includes/licensing/personal-data-encryption-pde.md)]

## Prerequisites

### Required

- [Azure AD joined device](/azure/active-directory/devices/concept-azure-ad-join)
- [Windows Hello for Business Overview](../../../identity-protection/hello-for-business/index.md)
- Windows 11, version 22H2 and later Enterprise and Education editions

### Not supported with PDE

- [FIDO/security key authentication](/azure/active-directory/authentication/howto-authentication-passwordless-security-key)
- [Winlogon automatic restart sign-on (ARSO)](/windows-server/identity/ad-ds/manage/component-updates/winlogon-automatic-restart-sign-on--arso-)
  - For information on disabling ARSO via Intune, see [Disable Winlogon automatic restart sign-on (ARSO)](intune-disable-arso.md).
- [Protect your enterprise data using Windows Information Protection (WIP)](../../../information-protection/windows-information-protection/protect-enterprise-data-using-wip.md)
- [Hybrid Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join-hybrid)
- Remote Desktop connections

### Security hardening recommendations

- [Kernel-mode crash dumps  and live dumps disabled](/windows/client-management/mdm/policy-csp-memorydump#memorydump-policies)

   Kernel-mode crash dumps and live dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable kernel-mode crash dumps and live dumps. For information on disabling crash dumps and live dumps via Intune, see [Disable kernel-mode crash dumps and live dumps](intune-disable-memory-dumps.md).

- [Windows Error Reporting (WER) disabled/User-mode crash dumps disabled](/windows/client-management/mdm/policy-csp-errorreporting#errorreporting-disablewindowserrorreporting)

   Disabling Windows Error Reporting prevents user-mode crash dumps. User-mode crash dumps can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable user-mode crash dumps. For more information on disabling crash dumps via Intune, see [Disable Windows Error Reporting (WER)/user-mode crash dumps](intune-disable-wer.md).

- [Hibernation disabled](/windows/client-management/mdm/policy-csp-power#power-allowhibernate)

   Hibernation files can potentially cause the keys used by PDE to protect content to be exposed. For greatest security, disable hibernation. For more information on disabling crash dumps via Intune, see [Disable hibernation](intune-disable-hibernation.md).

- [Allowing users to select when a password is required when resuming from connected standby disabled](/windows/client-management/mdm/policy-csp-admx-credentialproviders#admx-credentialproviders-allowdomaindelaylock)

    When this policy isn't configured, the outcome between on-premises Active Directory joined devices and workgroup devices, including Azure Active Directory joined devices, is different:

  - On-premises Active Directory joined devices:

    - A user can't change the amount of time after the device´s screen turns off before a password is required when waking the device.

    - A password is required immediately after the screen turns off.

    The above is the desired outcome, but PDE isn't supported with on-premises Active Directory joined devices.

  - Workgroup devices, including Azure AD joined devices:

    - A user on a Connected Standby device can change the amount of time after the device´s screen turns off before a password is required to wake the device.

    - During the time when the screen turns off but a password isn't required, the keys used by PDE to protect content could potentially be exposed. This outcome isn't a desired outcome.

    Because of this undesired outcome, it's recommended to explicitly disable this policy on Azure AD joined devices instead of leaving it at the default of **Not configured**.

   For information on disabling this policy via Intune, see [Disable allowing users to select when a password is required when resuming from connected standby](intune-disable-password-connected-standby.md).

### Highly recommended

- [BitLocker Drive Encryption](../bitlocker/index.md) enabled

   Although PDE will work without BitLocker, it's recommended to also enable BitLocker. PDE is meant to work alongside BitLocker for increased security. PDE isn't a replacement for BitLocker.

- Backup solution such as [OneDrive in Microsoft 365](/sharepoint/onedrive-overview)

   In certain scenarios such as TPM resets or destructive PIN resets, the keys used by PDE to protect content will be lost. In such scenarios, any content protected with PDE will no longer be accessible. The only way to recover such content would be from backup.

- [Windows Hello for Business PIN reset service](../../../identity-protection/hello-for-business/hello-feature-pin-reset.md)

   Destructive PIN resets will cause keys used by PDE to protect content to be lost. A destructive PIN reset will make any content protected with PDE no longer accessible after the destructive PIN reset has occurred. Content protected with PDE will need to be recovered from a backup after a destructive PIN reset. For this reason Windows Hello for Business PIN reset service is recommended since it provides non-destructive PIN resets.

- [Windows Hello Enhanced Sign-in Security](/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security)

   Provides additional security when authenticating with Windows Hello for Business via biometrics or PIN

## PDE protection levels

PDE uses AES-CBC with a 256-bit key to protect content and offers two levels of protection. The level of protection is determined based on the organizational needs. These levels can be set via the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager).

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

- User has signed into Windows via a password instead of signing in with Windows Hello for Business biometric or PIN.
- If protected via level 2 protection, when the device is locked.
- When trying to access content on the device remotely. For example, UNC network paths.
- Remote Desktop sessions.
- Other users on the device who aren't owners of the content, even if they're signed in via Windows Hello for Business and have permissions to navigate to the PDE protected content.

## How to enable PDE

To enable PDE on devices, push an MDM policy to the devices with the following parameters:

- Name: **Personal Data Encryption**
- OMA-URI: **./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption**
- Data type: **Integer**
- Value: **1**

There's also a [PDE CSP](/windows/client-management/mdm/personaldataencryption-csp) available for MDM solutions that support it.

> [!NOTE]
> Enabling the PDE policy on devices only enables the PDE feature. It does not protect any content. To protect content via PDE, use the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). The PDE APIs can be used to create custom applications and scripts to specify which content to protect and at what level to protect the content. Additionally, the PDE APIs can't be used to protect content until the PDE policy has been enabled.

For information on enabling PDE via Intune, see [Enable Personal Data Encryption (PDE)](intune-enable-pde.md).

## Differences between PDE and BitLocker

PDE is meant to work alongside BitLocker. PDE isn't a replacement for BitLocker, nor is BitLocker a replacement for PDE. Using both features together provides better security than using either BitLocker or PDE alone. However there are differences between BitLocker and PDE and how they work. These differences are why using them together offers better security.

| Item | PDE | BitLocker |
|--|--|--|
| Release of decryption key | At user sign-in via Windows Hello for Business | At boot |
| Decryption keys discarded | When user signs out of Windows or one minute after Windows lock screen is engaged | At reboot |
| Files protected | Individual specified files | Entire volume/drive |
| Authentication to access protected content | Windows Hello for Business | When BitLocker with TPM + PIN is enabled, BitLocker PIN plus Windows sign-in |

## Differences between PDE and EFS

The main difference between protecting files with PDE instead of EFS is the method they use to protect the file. PDE uses Windows Hello for Business to secure the keys that protect the files. EFS uses certificates to secure and protect the files.

To see if a file is protected with PDE or with EFS:

1. Open the properties of the file
2. Under the **General** tab, select **Advanced...**
3. In the **Advanced Attributes** windows, select **Details**

For PDE protected files, under **Protection status:** there will be an item listed as **Personal Data Encryption is:** and it will have the attribute of **On**.

For EFS protected files, under **Users who can access this file:**, there will be a **Certificate thumbprint** next to the users with access to the file. There will also be a section at the bottom labeled **Recovery certificates for this file as defined by recovery policy:**.

Encryption information including what encryption method is being used to protect the file can be obtained with the [cipher.exe /c](/windows-server/administration/windows-commands/cipher) command.

## Disable PDE and decrypt content

Once PDE is enabled, it isn't recommended to disable it. However if PDE does need to be disabled, it can be done so via the MDM policy described in the section [How to enable PDE](#how-to-enable-pde). The value of the OMA-URI needs to be changed from **`1`** to **`0`** as follows:

- Name: **Personal Data Encryption**
- OMA-URI: **./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption**
- Data type: **Integer**
- Value: **0**

Disabling PDE doesn't decrypt any PDE protected content. It only prevents the PDE API from being able to protect any additional content. PDE protected files can be manually decrypted using the following steps:

1. Open the properties of the file
2. Under the **General** tab, select **Advanced...**
3. Uncheck the option **Encrypt contents to secure data**
4. Select **OK**, and then **OK** again

PDE protected files can also be decrypted using [cipher.exe](/windows-server/administration/windows-commands/cipher). Using `cipher.exe` can be helpful to decrypt files in the following scenarios:

- Decrypting a large number of files on a device
- Decrypting files on a large number of devices.

To decrypt files on a device using `cipher.exe`:

- Decrypt all files under a directory including subdirectories:

    ```cmd
    cipher.exe /d /s:<path_to_directory>
    ```

- Decrypt a single file or all of the files in the specified directory, but not any subdirectories:

    ```cmd
    cipher.exe /d <path_to_file_or_directory>
    ```

> [!IMPORTANT]
> Once a user selects to manually decrypt a file, the user will not be able to manually protect the file again using PDE.

## Windows out of box applications that support PDE

Certain Windows applications support PDE out of the box. If PDE is enabled on a device, these applications will utilize PDE.

- Mail
  - Supports protecting both email bodies and attachments

## See also

- [Personal Data Encryption (PDE) FAQ](faq-pde.yml)
- [Configure Personal Data Encryption (PDE) polices in Intune](configure-pde-in-intune.md)
