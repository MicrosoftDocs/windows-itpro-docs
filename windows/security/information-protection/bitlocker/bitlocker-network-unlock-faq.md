---
title: BitLocker frequently asked questions (FAQ) (Windows 10)
description: This topic for the IT professional answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# BitLocker Network Unlock FAQ

**Applies to**
-   Windows 10

BitLocker Network Unlock enables easier management for BitLocker-enabled desktops and servers that use the TPM+PIN protection method in a domain environment. When a computer that is connected to a wired corporate network is rebooted, Network Unlock allows the PIN entry prompt to be bypassed. It automatically unlocks BitLocker-protected operating system volumes by using a trusted key that is provided by the Windows Deployment Services server as its secondary authentication method.

To use Network Unlock you must also have a PIN configured for your computer. When your computer is not connected to the network you will need to provide the PIN to unlock it.

BitLocker Network Unlock has software and hardware requirements for both client computers, Windows Deployment services, and domain controllers that must be met before you can use it.

Network Unlock uses two protectors, the TPM protector and the one provided by the network or by your PIN, whereas automatic unlock uses a single protector, the one stored in the TPM. If the computer is joined to a network without the key protector it will prompt you to enter your PIN. If the PIN is 
not available you will need to use the recovery key to unlock the computer if it can ot be connected to the network.

For more info, see [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md).


