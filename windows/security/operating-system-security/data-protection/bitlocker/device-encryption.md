---
title: Device Encryption
description: Learn how Device Encryption works for devices that support it.
ms.topic: conceptual
ms.date: 10/06/2023
---

# Device Encryption

Windows automatically enables BitLocker Device Encryption on devices that support Modern Standby.

Unlike a standard BitLocker implementation, BitLocker Device Encryption is enabled automatically so that the device is always protected. The following list outlines how BitLocker Device Encryption is enabled automatically:

- When a clean installation of Windows 11 or Windows 10 is completed and the out-of-box experience is finished, the computer is prepared for first use. As part of this preparation, BitLocker Device Encryption is initialized on the operating system drive and fixed data drives on the computer with a clear key that is the equivalent of standard BitLocker suspended state. In this state, the drive is shown with a warning icon in Windows Explorer.  The yellow warning icon is removed after the TPM protector is created and the recovery key is backed up, as explained in the following bullet points.

- If the device isn't domain joined, a Microsoft account that has been granted administrative privileges on the device is required. When the administrator uses a Microsoft account to sign in, the clear key is removed, a recovery key is uploaded to the online Microsoft account, and a TPM protector is created. Should a device require the recovery key, the user will be guided to use an alternate device and navigate to a recovery key access URL to retrieve the recovery key by using their Microsoft account credentials.

- If the user uses a domain account to sign in, the clear key isn't removed until the user joins the device to a domain, and the recovery key is successfully backed up to Active Directory Domain Services (AD DS). The following Group Policy settings must be enabled for the recovery key to be backed up to AD DS:

  *Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives* > **Do not enable BitLocker until recovery information is stored in AD DS for operating system drives**
  
  With this configuration, the recovery password is created automatically when the computer joins the domain, and then the recovery key is backed up to AD DS, the TPM protector is created, and the clear key is removed.

- Similar to signing in with a domain account, the clear key is removed when the user signs in to an Azure AD account on the device. As described in the bullet point above, the recovery password is created automatically when the user authenticates to Azure AD. Then, the recovery key is backed up to Azure AD, the TPM protector is created, and the clear key is removed.

Microsoft recommends automatically enabling BitLocker Device Encryption on any systems that support it. However, the automatic BitLocker Device Encryption process can be prevented by changing the following registry setting:

- **Subkey**: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\BitLocker`
- **Type**: `REG_DWORD`
- **Value**: `PreventDeviceEncryption` equal to `1` (True)

> [!NOTE]
> BitLocker Device Encryption uses the XTS-AES 128-bit encryption method. If a different encryption method and/or cipher strength is needed but the device is already encrypted, it must first be decrypted before the new encryption method and/or cipher strength can be applied. After the device has been decrypted, different BitLocker settings can be applied.

*Device Encryption* is a Windows feature that provides a simple way for some devices to enable BitLocker encryption automatically. Device Encryption is available on all Windows versions, including Home edition, but requires a device to meet either [Modern Standby](/windows-hardware/design/device-experiences/modern-standby) or HSTI security requirements, and have no externally accessible ports that allow DMA access.

Device Encryption encrypts the data on a device immediately, but doesn't enable protection until the key is safely backed up to the user's Microsoft account. The encrypted device is left in a *clear key* state, where the encryption key is stored in plain text on the volume to allow free access to the data. Even though the data is encrypted, the device is completely unprotected in this state. In this *clear key* state, `manage-bde.exe` will show data as encrypted, but **Protection Off**, and no protectors yet added. Device encription-capable devices are in this state if no Microsoft account user signs in as an administrator of the device. Connecting to a Microsoft account and the internet causes the recovery key to back up, protector to be added (using the device's TPM), and protection to be enabled.

Difference between BitLocker and Device Encryption (DE):

- Device Encryption turn BitLocker on automatically on Device Encryption-qualifying devices, with the recovery key automatically backed up to the user's Microsoft account
- Device Encryption adds a Device Encryption setting in the Settings app

Device Encryption facts:

- Device Encryption enables BitLocker automatically once a Microsoft Account is signed in to the device and the recovery key gets successfully backed up to the user's account
  - On Windows Home edition, Device Encryption enables BitLocker with limited management capabilities (via the BitLocker Control Panel applet only)
  - On other Windows versions where *full* BitLocker is present, Device Encryption's effect is to turn BitLocker on automatically instead of waiting for manual activation

- If a device uses only local accounts, then it remains unprotected even though the data is encrypted
- Device Encryption has a UI in the Settings app to turn it on/off
- If Device Encryption is turned off, it will no longer automatically enable itself in the future. The user must enable it manually in Settings
- If a device doesn't initially qualify for Device Encryption, but then a change is made that causes the device to qualify (for example, turn Secure Boot on), Device Encryption will enable BitLocker automatically as soon as it detects it (if Device Encryption wasn't previously turned off)
- Device Encryption is enabled as soon as the device completes OOBE, but the work to encrypt all existing data waits for both AC power and idle time to start the actual encryption, therefore full protection may not be complete immediately. In most cases, encryption takes only minutes to complete

- The Settings UI will not show Device Encryption enabled until encryption is complete
- manage-bde.exe is available and has all capabilities on all versions of Windows
- Device Encryption encrypts only fixed drives, will not encrypt external/USB drives

You can check whether a device meets requirements for Device Encryption in the System Information app (msinfo32.exe). (see below for more)
