---
title: Personal Data Encryption (PDE)
description: Personal Data Encryption unlocks user encrypted data at user sign in instead of at boot
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: m365-security
author: frankroj
ms.date: 09/22/2022
---


# Personal Data Encryption
<!-- Max 5963468 OS 32516487 -->
(*Applies to: Windows 11, version 22H2 and later Enterprise and Education editions*)

Personal data encryption (PDE) is a security feature introduced in Windows 11, version 22H2 that provides encryption of individual files. PDE occurs in addition to other encryption methods such as BitLocker.

PDE utilizes Windows Hello for Business to link data encryption keys with user credentials. This feature can minimizes the number of credentials the user has to remember to gain access to files. For example, when using BitLocker with PIN, a user would need to authenticate twice - once with the BitLocker PIN and a second time with Windows credentials. This requires users to remember two different credentials. With PDE, users only need to enter one set of credentials via Windows Hello for Business.

PDE is also accessibility friendly. For example, The BitLocker PIN entry screen doesn't have accessibility options. PDE however uses Windows Hello for Business, which does have accessibility features.

Unlike BitLocker that releases data encryption keys at boot, PDE doesn't release data encryption keys until a user logs in using Windows Hello for Business. Users will only be able to access their PDE encrypted files once they've signed into Windows using Windows Hello for Business. Additionally, PDE has the ability to also discard the encryption keys when the device is locked.

> [!NOTE]
> PDE is currently only available to developers via [APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager.md). There is no user interface in Windows to either enable PDE or encrypt files via PDE. Also, although there is an MDM policy that can enable PDE, there are no MDM policies that can be used to encrypt files via PDE.

## Prerequisites

- **Required**
  - [Azure AD joined device](/azure/active-directory/devices/concept-azure-ad-join.md)
  - [Windows Hello for Business](/security/identity-protection/hello-for-business/hello-overview.md)
  - Windows 11, version 22H2 and later Enterprise and Education editions

- **Not supported with PDE**
  - [FIDO/security key authentication](/security/identity-protection/hello-for-business/microsoft-compatible-security-key.md)
  - [Winlogon automatic restart sign-on (ARSO)](/windows-server/identity/ad-ds/manage/component-updates/winlogon-automatic-restart-sign-on--arso-)
  - [Windows Information Protection (WIP)](/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip)
  - [Hybrid Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join-hybrid.md)
  - Remote Desktop connections
  
- **Highly recommended**
  - [BitLocker Drive Encryption](/security/information-protection/bitlocker/bitlocker-overview.md) enabled
    - Although PDE will work without BitLocker, it's recommended to also enable BitLocker. PDE is meant to supplement BitLocker and not replace it.
  - Backup solution such as [OneDrive](/onedrive/onedrive)
    - In certain scenarios such as TPM resets or destructive PIN resets, the PDE encryption keys can be lost. In such scenarios, any file encrypted with PDE will no longer be accessible. The only way to recover such files would be from backup.
  - [Windows Hello for Business PIN reset service](/security/identity-protection/hello-for-business/hello-feature-pin-reset.md)
    - Destructive PIN resets will cause PDE encryption keys to be lost. The destructive PIN reset will make any file encrypted with PDE no longer accessible after a destructive PIN reset. Files encrypted with PDE will need to be recovered from a backup after a destructive PIN reset. For this reason Windows Hello for Business PIN reset service is recommended since it provides non-destructive PIN resets.
  - [Windows Hello Enhanced Sign-in Security](/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security)
    - Provides additional security when authenticating with Windows Hello for Business via biometrics or PIN
  - [Kernel and user mode crash dumps disabled](windows/client-management/mdm/policy-csp-memorydump)
    - Crash dumps can potentially cause the PDE encryption keys to be exposed. For greatest security, disable kernel and user mode crash dumps.
  - [Hibernation disabled](windows/client-management/mdm/policy-csp-power#power-allowhibernate)
    - Hibernation files can potentially cause the PDE encryption keys to be exposed. For greatest security, disable hibernation.

## PDE protection levels

PDE offers two levels of protection. The level of protection is determined based on the organizational needs. These levels can be set via the PDE APIs.

| | Level 1 | Level 2 |
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
- Remote Desktop sessions
- Other users on the device who aren't owners of the file, even if they're signed in via Windows Hello for Business and have permissions to navigate to the PDE encrypted files.

## How to enable PDE

To enable PDE on devices, push an MDM policy to the devices with the following parameters:

- Name: **Personal Data Encryption**
- OMA-URI: **./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption**
- Data type: **Integer**
- Value: **1**

There's also a [PDE CSP](/windows/client-management/mdm/personaldataencryption-csp) available for MDM solutions that support it.

> [!NOTE]
> Enabling the PDE policy on devices only enables the PDE feature. It does not encrypt any files. To encrypt files, use the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager.md) to create custom applications and scripts to specify which files to encrypt and at what level to encrypt the files. Additionally, files will not encrypt via the APIs until this policy has been enabled.

### Enabling PDE in Intune

1. Sign into the Intune admin center
2. Navigate to **Devices** > **Configuration Profiles**
3. Select **Create profile**
4. Under **Platform**, select **Windows 10 and later**
5. Under **Profile type**, select **Templates**
6. Under **Template name**, select **Custom**, and then select **Create**
7. On the ****Basics** tab: 
    1. Next to **Name**, enter **Personal Data Encryption**
    2. Next to **Description**, enter a description 
8. Select **Next**
9. On the **Configuration settings** tab, select **Add**
10. In the **Add Row** window:
    1. Next to **Name**, enter **Personal Data Encryption**
    2. Next to **Description**, enter a description
    3. Next to **OMA-URI**, enter in **./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption**
    4. Next to **Data type**, select **Integer**
    5. Next to **Value**, enter in **1**
11. Select **Save**, and then select **Next**
12. On the **Assignments** tab:
    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the PDE policy should be deployed to
    3. Select **Select**
    4. Select **Next**
13. On the **Applicability Rules** tab, configure if necessary and then select **Next**
14. On the **Review + create** tab, review the configuration to make sure everything is configured correctly, and then select **Create**

### Configuring required prerequisites in Intune

#### Disabling Winlogon automatic restart sign-on (ARSO)

1. Sign into the Intune admin center
2. Navigate to **Devices** > **Configuration Profiles**
3. Select **Create profile**
4. Under **Platform**, select **Windows 10 and later**
5. Under **Profile type**, select **Templates**
6. Under **Template name**, select **Administrative templates**, and then select **Create**
7. On the ****Basics** tab:
    1. Next to **Name**, enter **Disable ARSO**
    2. Next to **Description**, enter a description
8. Select **Next**
9. On the **Configuration settings** tab, under **Computer Configuration**, navigate to **Windows Components** > **Windows Logon Options**
10. Select **Sign-in and lock last interactive user automatically after a restart**
11. In the **Sign-in and lock last interactive user automatically after a restart** window that opens, select **Disabled**, and then select **OK**
12. Select **Next**
13. On the **Scope tags** tab, configure if necessary and then select **Next**
12. On the **Assignments** tab:
    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the ARSO policy should be deployed to
    3. Select **Select**
    4. Select **Next**
13. On the **Review + create** tab, review the configuration to make sure everything is configured correctly, and then select **Create**

### Configuring recommended prerequisites in Intune

#### Disabling hibernation

1. Sign into the Intune admin center
2. Navigate to **Devices** > **Configuration Profiles**
3. Select **Create profile**
4. Under **Platform**, select **Windows 10 and later**
5. Under **Profile type**, select **Settings catalog**, and then select **Create**
6. On the ****Basics** tab:
    1. Next to **Name**, enter **Disable Hibernation**
    2. Next to **Description**, enter a description
7. Select **Next**
8. On the **Configuration settings** tab, select **Add settings**
9. In the **Settings picker** windows, select **Power**
10. When the settings appear in the lower pane, under **Setting name**, select **Allow Hibernate**, and then select the **X** in the top right corner of the **Settings picker** window to close the window
11. Change **Allow Hibernate** to **Block**, and then select **Next**
12. On the **Scope tags** tab, configure if necessary and then select **Next**
13. On the **Assignments** tab:
    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the ARSO policy should be deployed to
    3. Select **Select**
    4. Select **Next**
14. On the **Review + create** tab, review the configuration to make sure everything is configured correctly, and then select **Create**

#### Disabling crash dumps

1. Sign into the Intune admin center
2. Navigate to **Devices** > **Configuration Profiles**
3. Select **Create profile**
4. Under **Platform**, select **Windows 10 and later**
5. Under **Profile type**, select **Settings catalog**, and then select **Create**
6. On the ****Basics** tab:
    1. Next to **Name**, enter **Disable Hibernation**
    2. Next to **Description**, enter a description
7. Select **Next**
8. On the **Configuration settings** tab, select **Add settings**
9. In the **Settings picker** windows, select **Memory Dump**
10. When the settings appear in the lower pane, under **Setting name**, select both **Allow Crash Dump** and **Allow Live Dump**, and then select the **X** in the top right corner of the **Settings picker** window to close the window
11. Change both **Allow Live Dump** and **Allow Crash Dump** to **Block**, and then select **Next**
12. On the **Scope tags** tab, configure if necessary and then select **Next**
13. On the **Assignments** tab:
    1. Under **Included groups**, select **Add groups**
    2. Select the groups that the ARSO policy should be deployed to
    3. Select **Select**
    4. Select **Next**
14. On the **Review + create** tab, review the configuration to make sure everything is configured correctly, and then select **Create**

## Differences between PDE and BitLocker

| | PDE | BitLocker |
|--|--|--|
| Release of encryption keys | At user sign in via Windows Hello for Business | At boot |
| Encryption keys discarded | At user sign out | At reboot |
| Files encrypted | Individual specified files | Entire volume/drive |
| Authentication to access encrypted file | Windows Hello for Business | When BitLocker with PIN is enabled, BitLocker PIN plus Windows sign in |
| Accessibility | Windows Hello for Business is accessibility friendly | BitLocker with PIN doesn't have accessibility features |

## Differences between PDE and EFS

The main difference between encrypting files with PDE instead of EFS is the method they use to encrypt the file. PDE uses Windows Hello for Business to secure the encryption keys that encrypts the files. EFS uses certificates to secure and encrypt the files.

To see if a file is encrypted with PDE or EFS:

1. Open the properties of the file
2. Under the **General** tab, select **Advanced...**
3. In the **Advanced Attributes** windows, select **Details**

For PDE encrypted files, under **Protection status:** there will be an item listed as **Personal Data Encryption is:** and it will have the attribute of **On**.

For EFS encrypted files, under **Users who can access this file:**, there will be a **Certificate thumbprint** next to the users with access to the file. There will also be a section at the bottom labeled **Recovery certificates for this file as defined by recovery policy:**.

Encryption information including what encryption method is being used can be obtained with the command line **cipher.exe /c** command.

## Disabling PDE and decrypting files

Currently there's no method to disable PDE via MDM policy. However, PDE can be disabled locally and files can be decrypted using **cipher.exe**.

In certain scenarios a user may be able to manually decrypt a file using the following steps:

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

## FAQ

**Can PDE encrypt entire volumes or drives?** <br>
No. PDE only encrypts specified files

**Is PDE replacement for BitLocker?** <br>
No. It's still recommended to encrypt all volumes with BitLocker Drive Encryption for increased security.

**Can an IT admin specify which files should be encrypted?** <br>
Yes, but it can only be done using APIs.

**Do I need to use OneDrive as my backup provider?** <br>
PDE doesn't have a requirement for a backup provider including OneDrive. However, backups are strongly recommended in case the encryption keys used by PDE are lost. OneDrive is a recommended backup provider.

**What is the relation between Windows Hello for Business and PDE?** <br>
Windows Hello for Business unlocks PDE encryption keys during user sign on.

**Can a file be encrypted with both PDE and EFS at the same time?** <br>
No. PDE and EFS are mutually exclusive.

**Can PDE encrypted files be accessed after signing on via a Remote Desktop connection (RDP)?** <br>
No. Accessing PDE encrypted files over RDP isn't currently supported.

**Can PDE encrypted files be access via a network share?** <br>
No. PDE encrypted files can only be accessed after signing on locally with Windows Hello for Business credentials.

**How can it be determined if a file is encrypted with PDE?** <br>
Encrypted files will show a padlock on the file's icon. Additionally, **cipher.exe** can be used to show the encryption state of the file.

**Can users manually encrypt and decrypt files with PDE.** <br>
Currently users can decrypt files manually but they can't encrypt files manually.

**If a user signs into Windows with a password instead of Windows Hello for Business, will they be able to access their PDE encrypted files?** <br>
No. PDE encryption keys are protected Windows Hello for Business credentials and will only be unlocked when signing on with Windows Hello for Business PIN or biometrics.