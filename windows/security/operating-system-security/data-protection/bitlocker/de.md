## BitLocker Device Encryption

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

