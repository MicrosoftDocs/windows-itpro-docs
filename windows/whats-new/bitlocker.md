---
title: What's new in BitLocker? (Windows 10)
description: BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers.
ms.assetid: 3F2DE365-68A1-4CDB-AB5F-C65574684C7B
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: brianlic-msft
---

# What's new in BitLocker?


**Applies to**

-   Windows 10
-   Windows 10 Mobile

BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers.

## New features in Windows 10, Version 1511


-   **XTS-AES encryption algorithm**. BitLocker now supports the XTS-AES encryption algorithm. XTS-AES provides additional protection from a class of attacks on encryption that rely on manipulating cipher text to cause predictable changes in plain text. BitLocker supports both 128-bit and 256-bit XTS-AES keys.

    It provides the following benefits:

    -   The algorithm is FIPS-compliant.

    -   Easy to administer. You can use the BitLocker Wizard, manage-bde, Group Policy, MDM policy, Windows PowerShell, or WMI to manage it on devices in your organization.

    **Note**  
    Drives encrypted with XTS-AES will not be accessible on older version of Windows. This is only recommended for fixed and operating system drives. Removable drives should continue to use the AES-CBC 128-bit or AES-CBC 256-bit algorithms.

     

## New features in Windows 10


-   **Encrypt and recover your device with Azure Active Directory**. In addition to using a Microsoft Account, automatic [Device Encryption](http://technet.microsoft.com/library/dn306081.aspx#BKMK_Encryption) can now encrypt your devices that are joined to an Azure Active Directory domain. When the device is encrypted, the BitLocker recovery key is automatically escrowed to Azure Active Directory. This will make it easier to recover your BitLocker key online.

-   **DMA port protection**. You can use the [DataProtection/AllowDirectMemoryAccess](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) MDM policy to block DMA ports when the device is starting up. Also, when a device is locked, all unused DMA ports are turned off, but any devices that are already plugged into a DMA port will continue to work. When the device is unlocked, all DMA ports are turned back on.

-   **New Group Policy for configuring pre-boot recovery**. You can now configure the pre-boot recovery message and recover URL that is shown on the pre-boot recovery screen. For more info, see the "Configure pre-boot recovery message and URL" section in [BitLocker Group Policy settings](windows/keep-secure/bitlocker-group-policy-settings.md).

[Learn how to deploy and manage BitLocker within your organization](windows/keep-secure/bitlocker-overview-roletech-overview.md).

## Related topics


[Trusted Platform Module](/windows/keep-secure/trusted-platform-module-technology-overview.md)

 

 





