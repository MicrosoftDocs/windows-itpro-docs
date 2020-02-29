---
title: Overview Device Encryption in Windows 10
description: This topic provides an overview of how Device Encryption can help protect data on devices running Windows 10.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
ms.reviewer: 
---

# Overview of Device Encryption in Windows 10

**Applies to**
-   Windows 10

This topic explains how Device Encryption can help protect data on devices running Windows 10. 
For a general overview and list of topics about BitLocker and Device Encryption, see [BitLocker and Device Encryption overview](DataEncryptionToolsOverview.md). 

## Device Encryption 

Beginning in Windows 8.1, Microsoft started to roll out a new feature called Device Encryption. Like BitLocker with the Drive Encryption the Device Encryption is able to encrypt internal drives to secure them. While the standard BitLocker feature is only available in the Pro, Education and Enterprise versions of Windows, Device Encryption is also available in the Home versions. This offers hard drive encryption for a broader range of devices. Windows automatically enables Device Encryption on devices that support Modern Standby.

Device Encryption uses BitLocker technology to protect the system by transparently implementing device-wide data encryption. 

For a comparison between the BitLocker feature and the Device Encryption feature, see [BitLocker and Device Encryption overview](DataEncryptionToolsOverview.md)

### Special features Device Encryption

Unlike a standard BitLocker implementation, Device Encryption is enabled automatically so that the device is always protected. The following list outlines how this happens:

* When a clean installation of Windows 10 is completed and the out-of-box experience is finished, the computer is prepared for first use. As part of this preparation, Device Encryption is initialized on the operating system drive and fixed data drives on the computer with a clear key (this is the equivalent of standard BitLocker suspended state). In this state, the drive is shown with a warning icon in Windows Explorer.  The yellow warning icon is removed after the TPM protector is created and the recovery key is backed up, as explained in the following bullet points.
* If the device is not domain joined, a Microsoft account that has been granted administrative privileges on the device is required. When the administrator uses a Microsoft account to sign in, the clear key is removed, a recovery key is uploaded to the online Microsoft account, and a TPM protector is created. Should a device require the recovery key, the user will be guided to use an alternate device and navigate to a recovery key access URL to retrieve the recovery key by using his or her Microsoft account credentials.
* If the user uses a domain account to sign in, the clear key is not removed until the user joins the device to a domain and the recovery key is successfully backed up to Active Directory Domain Services (AD DS). You must enable the **Computer Configuration\\Administrative Templates\\Windows Components\\BitLocker Drive Encryption\\Operating System Drives** Group Policy setting, and select the **Do not enable BitLocker until recovery information is stored in AD DS for operating system drives** option. With this configuration, the recovery password is created automatically when the computer joins the domain, and then the recovery key is backed up to AD DS, the TPM protector is created, and the clear key is removed.
* Similar to signing in with a domain account, the clear key is removed when the user logs on to an Azure AD account on the device. As described in the bullet point above, the recovery password is created automatically when the user authenticates to Azure AD. Then, the recovery key is backed up to Azure AD, the TPM protector is created, and the clear key is removed.

Microsoft recommends that Device Encryption be enabled on any systems that support it, but the automatic Device Encryption process can be prevented by changing the following registry setting:
- **Subkey**: HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\BitLocker
- **Value**: PreventDeviceEncryption equal to True (1)
- **Type**: REG\_DWORD

Administrators can manage domain-joined devices that have Device Encryption enabled through Microsoft BitLocker Administration and Monitoring (MBAM). In this case, Device Encryption automatically makes additional BitLocker options available. No conversion or encryption is required, and MBAM can manage the full BitLocker policy set if any configuration changes are required.
