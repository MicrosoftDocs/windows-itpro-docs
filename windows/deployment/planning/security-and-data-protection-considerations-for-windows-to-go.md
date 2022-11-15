---
title: Security and data protection considerations for Windows To Go (Windows 10)
description: Ensure that the data, content, and resources you work with in the Windows To Go workspace are protected and secure.
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.topic: article
ms.technology: itpro-deploy
---

# Security and data protection considerations for Windows To Go

**Applies to**

-   Windows 10

> [!IMPORTANT]
> Windows To Go is removed in Windows 10, version 2004 and later operating systems. The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.

One of the most important requirements to consider when you plan your Windows To Go deployment is to ensure that the data, content, and resources you work with in the Windows To Go workspace is protected and secure.

## Backup and restore

When you don't save data on the Windows To Go drive, you don't need for a backup and restore solution for Windows To Go. If you're saving data on the drive and aren't using folder redirection and offline files, you should back up all of your data to a network location such as cloud storage or a network share, after each work session. Review the new and improved features described in [Supporting Information Workers with Reliable File Services and Storage](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831495(v=ws.11)) for different solutions you could implement.

If the USB drive fails for any reason, the standard process to restore the drive to working condition is to reformat and reprovision the drive with Windows To Go, so all data and customization on the drive will be lost. This result is another reason why using roaming user profiles, folder redirection, and offline files with Windows To Go is recommended. For more information, see [Folder Redirection, Offline Files, and Roaming User Profiles overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh848267(v=ws.11)).

## BitLocker

We recommend that you use BitLocker with your Windows To Go drives to protect the drive from being compromised if the drive is lost or stolen. When BitLocker is enabled, the user must provide a password to unlock the drive and boot the Windows To Go workspace. This password requirement helps prevent unauthorized users from booting the drive and using it to gain access to your network resources and confidential data. Because Windows To Go drives are meant to be roamed between computers, the Trusted Platform Module (TPM) can't be used by BitLocker to protect the drive. Instead, you'll be specifying a password that BitLocker will use for disk encryption and decryption. By default, this password must be eight characters in length and can enforce more strict requirements depending on the password complexity requirements defined by your organizations domain controller.

You can enable BitLocker while using the Windows To Go Creator wizard as part of the drive provisioning process before first use; or it can be enabled afterward by the user from within the Windows To Go workspace.

> [!Tip]
> If the Windows To Go Creator wizard isn't able to enable BitLocker, see [Why can't I enable BitLocker from Windows To Go Creator?](windows-to-go-frequently-asked-questions.yml#why-can-t-i-enable-bitlocker-from-windows-to-go-creator-)

When you use a host computer running Windows 7 that has BitLocker enabled, suspend BitLocker before changing the BIOS settings to boot from USB and then resume BitLocker protection. If BitLocker isn't suspended first, the next boot of the computer is in recovery mode.

## Disk discovery and data leakage

We recommend that you use the **NoDefaultDriveLetter** attribute when provisioning the USB drive to help prevent accidental data leakage. **NoDefaultDriveLetter** will prevent the host operating system from assigning a drive letter if a user inserts it into a running computer. This prevention means the drive won't appear in Windows Explorer and an Auto-Play prompt won't be displayed to the user. This non-display of the drive and the prompt reduces the likelihood that an end user will access the offline Windows To Go disk directly from another computer. If you use the Windows To Go Creator to provision a workspace, this attribute will automatically be set for you.

To prevent accidental data leakage between Windows To Go and the host system Windows 8 has a new SAN policy—OFFLINE\_INTERNAL - "4" to prevent the operating system from automatically bringing online any internally connected disk. The default configuration for Windows To Go has this policy enabled. It's recommended you do not change this policy to allow mounting of internal hard drives when booted into the Windows To Go workspace. If the internal drive contains a hibernated Windows 8 operating system, mounting the drive will lead to loss of hibernation state and, therefore, user state or any unsaved user data when the host operating system is booted. If the internal drive contains a hibernated Windows 7 or earlier operating system, mounting the drive will lead to corruption when the host operating system is booted.

For more information, see [How to Configure Storage Area Network (SAN) Policy in Windows PE](/previous-versions/windows/it-pro/windows-8.1-and-8/hh825063(v=win.10)).

## Security certifications for Windows To Go

Windows to Go is a core capability of Windows when it's deployed on the drive and is configured following the guidance for the applicable security certification. Solutions built using Windows To Go can be submitted for more certifications by the solution provider that cover the solution provider's specific hardware environment. For more information about Windows security certifications, see the following articles.

-   [Windows Platform Common Criteria Certification](/windows/security/threat-protection/windows-platform-common-criteria)

-   [FIPS 140 Evaluation](/windows/security/threat-protection/fips-140-validation)

## Related articles

[Windows To Go: feature overview](windows-to-go-overview.md)

[Prepare your organization for Windows To Go](prepare-your-organization-for-windows-to-go.md)

[Deployment considerations for Windows To Go](deployment-considerations-for-windows-to-go.md)

[Windows To Go: frequently asked questions](windows-to-go-frequently-asked-questions.yml)

 

