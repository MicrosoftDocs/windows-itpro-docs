---
title: Protect BitLocker from pre-boot attacks (Windows 10)
description: This detailed guide will help you understand the circumstances under which the use of pre-boot authentication is recommended for devices running Windows 10, Windows 8.1, Windows 8, or Windows 7; and when it can be safely omitted from a device’s configuration.
ms.assetid: 24d19988-fc79-4c45-b392-b39cba4ec86b
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Protect BitLocker from pre-boot attacks


**Applies to**

-   Windows 10

This detailed guide will help you understand the circumstances under which the use of pre-boot authentication is recommended for devices running Windows 10, Windows 8.1, Windows 8, or Windows 7; and when it can be safely omitted from a device’s configuration.

BitLocker uses encryption to protect the data on your drive, but BitLocker security is only effective when the encryption key is protected. Many users have relied on pre-boot authentication to protect the operating system’s integrity, disk encryption solution (for example, encryption keys), and the PC’s data from offline attacks. With pre-boot authentication, users must provide some form of credential before unlocking encrypted volumes and starting Windows. Typically, they authenticate themselves using a PIN or a USB flash drive as a key.

Full-volume encryption using BitLocker Drive Encryption is vital for protecting data and system integrity on devices running the Windows 10, Windows 8.1, Windows 8, or Windows 7 operating system. It is equally important to protect the BitLocker encryption key. On Windows 7 devices, sufficiently protecting that key often required pre-boot authentication, which many users find inconvenient and complicates device management.

Pre-boot authentication provides excellent startup security, but it inconveniences users and increases IT management costs. Every time the PC is unattended, the device must be set to hibernate (in other words, shut down and powered off); when the computer restarts, users must authenticate before the encrypted volumes are unlocked. This requirement increases restart times and prevents users from accessing remote PCs until they can physically access the computer to authenticate, making pre-boot authentication unacceptable in the modern IT world, where users expect their devices to turn on instantly and IT requires PCs to be constantly connected to the network.

If users lose their USB key or forget their PIN, they can’t access their PC without a recovery key. With a properly configured infrastructure, the organization’s support will be able to provide the recovery key, but doing so increases support costs, and users might lose hours of productive work time.

Starting with Windows 8, Secure Boot and Windows Trusted Boot startup process ensures operating system integrity, allowing Windows to start automatically while minimizing the risk of malicious startup tools and rootkits. In addition, many modern devices are fundamentally physically resistant to sophisticated attacks against the computer’s memory, and now Windows authenticates the user before making devices that may represent a threat to the device and encryption keys available for use.

## In this topic


The sections that follow help you understand which PCs still need pre-boot authentication and which can meet your security requirements without the inconvenience of it.

-   [Types of attacks for volume encryption keys](types-of-attacks-for-volume-encryption-keys.md)

-   [BitLocker countermeasures](bitlocker-countermeasures.md)

-   [Choose the right BitLocker countermeasure](choose-the-right-bitlocker-countermeasure.md)

## See also


-   [BitLocker overview](bitlocker-overview-roletech-overview.md)

 

 





