---
title: Device encryption
description: Learn how device encryption works for devices that support it.
ms.topic: overview
ms.date: 10/09/2023
---

# Device encryption

*Device encryption* is a Windows feature that provides a simple way for some devices to enable BitLocker encryption automatically. Device encryption is available on all Windows versions, including Home edition, but requires a device to meet either [Modern Standby](/windows-hardware/design/device-experiences/modern-standby) or HSTI security requirements, and have no externally accessible ports that allow DMA access.

> [!IMPORTANT]
> Device encryption encrypts only the OS drive and fixed drives, it doesn't encrypt external/USB drives

Unlike a standard BitLocker implementation, device encryption is enabled automatically so that the device is always protected. When a clean installation of Windows is completed and the out-of-box experience is finished, the device is prepared for first use. As part of this preparation, device encryption is initialized on the OS drive and fixed data drives on the computer with a clear key that is the equivalent of standard BitLocker suspended state. In this state, the drive is shown with a warning icon in Windows Explorer. The yellow warning icon is removed after the TPM protector is created and the recovery key is backed up.

- If the device is Microsoft Entra joined or Active Directory domain joined, the clear key is removed once the the recovery key is successfully backed up to Microsoft Entra ID or Active Directory Domain Services (AD DS). The following policy settings must be enabled for the recovery key to be backed up: [Choose how BitLocker-protected operating system drives can be recovered](policy-settings.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
  - For Microsoft Entra joined devices: the recovery password is created automatically when the user authenticates to Microsoft Entra ID, then the recovery key is backed up to Microsoft Entra ID, the TPM protector is created, and the clear key is removed
  - For AD DS joined devices: the recovery password is created automatically when the computer joins the domain. The recovery key is then backed up to AD DS, the TPM protector is created, and the clear key is removed
- If the device isn't Microsoft Entra joined or Active Directory domain joined, a Microsoft account with administrative privileges on the device is required. When the administrator uses a Microsoft account to sign in, the clear key is removed, a recovery key is uploaded to the online Microsoft account, and a TPM protector is created. Should a device require the recovery key, the user is guided to use an alternate device and navigate to a recovery key access URL to retrieve the recovery key by using their Microsoft account credentials
- If a device uses only local accounts, then it remains unprotected even though the data is encrypted

If a device doesn't initially qualify for device encryption, but then a change is made that causes the device to qualify (for example, turn *Secure Boot* on), device encryption enables BitLocker automatically as soon as it detects it (unless device encryption is disabled).

You can check whether a device meets requirements for device encryption in the System Information app (msinfo32.exe). If the device meets the requirements, System Information shows a device encryption Support line that reads: **Meets prerequisites**.

## Difference between BitLocker and device encryption

- Device encryption turns BitLocker on automatically on device encryption-qualifying devices, with the recovery key automatically backed up to Microsoft Entra ID, AD DS, or the user's Microsoft account
- Device encryption adds a device encryption setting in the Settings app, which can be used to turn device encryption on or off
  - The Settings UI will not show device encryption enabled until encryption is complete
    > [!NOTE]
    > If device encryption is turned off, it will no longer automatically enable itself in the future. The user must enable it manually in Settings

:::image type="content" source="images/settings-device-encryption.png" alt-text="Screenshot of the Settings app showing the device encryption panel." border="False":::

## Disable device encryption

It's recommended to keep device encryption on for any systems that support it. However, you can prevent the automatic device encryption process by changing the following registry setting:

| Path|Name|Type|Value|
|-|-|-|-|
| `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\BitLocker`| `PreventDeviceEncryption`|REG_DWORD|0x1|

> [!NOTE]
> Device encryption uses the XTS-AES 128-bit encryption method. If a different encryption method and/or cipher strength is needed but the device is already encrypted, it must first be decrypted before the new encryption method and/or cipher strength can be applied. After the device is decrypted, you can apply different BitLocker settings.
