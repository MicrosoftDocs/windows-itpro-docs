---
title: BitLocker Network Unlock known issues
description: Describes several known issues that you may encounter while using Network Unlock, and provided guidance for addressing those issues.
ms.reviewer: kaushika
ms.technology: windows
ms.prod: w10
ms.sitesec: library
ms.localizationpriority: medium
author: Teresa-Motiv
ms.author: v-tea
manager: kaushika
audience: ITPro
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 10/7/2019
ms.custom: bitlocker
---

# BitLocker Network Unlock: known issues

By using the BitLocker Network Unlock feature, you can manage computers remotely without having to enter a BitLocker PIN when each computer starts up. To do this, You have to configure your environment to meet the following requirements:

- Each computer belongs to a domain
- Each computer has a wired connection to the corporate network
- The corporate network uses DHCP to manage IP addresses
- Each computer has a DHCP driver implemented in its Unified Extensible Firmware Interface (UEFI) firmware

For general guidelines about how to troubleshoot Network Unlock, see [How to enable Network Unlock: Troubleshoot Network Unlock](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-how-to-enable-network-unlock#troubleshoot-network-unlock).

This article describes several known issues that you may encounter when you use Network Unlock, and provides guidance to address these issues.

## Tip: Detect whether BitLocker Network Unlock is enabled on a specific computer

You can use the following steps on computers that have either x64 or x32 UEFI systems. You can also script these commands.

1. Open an elevated Command Prompt window and run the following command:

   ```cmd
   manage-bde protectors get <Drive>
   ```

   where \<*Drive*> is the drive letter, followed by a colon (:), of the bootable drive.
   If the output of this command includes a key protector of type **TpmCertificate (9)**, the configuration is correct for BitLocker Network Unlock.

1. Start Registry Editor, and verify the following settings:
   - Entry **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\FVE: OSManageNKP** is set to **1**
   - Subkey **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\FVE\_NKP\\Certificates** has an entry whose name matches the name of the certificate thumbprint of the Network Unlock key protector that you found in step 1.

## On a Surface Pro 4 device, BitLocker Network Unlock does not work because the UEFI network stack is incorrectly configured

You have configured BitLocker Network Unlock as described in [BitLocker: How to enable Network Unlock](https://docs.microsoft.com/windows/device-security/bitlocker/bitlocker-how-to-enable-network-unlock). You have configured the UEFI of the device to use DHCP. However, when you restart the device, it still prompts you for the BitLocker PIN.  

You test another device, such as a different type of tablet or laptop PC, that is configured to use the same infrastructure. The device restarts as expected, without prompting for the BitLocker PIN. You conclude that the infrastructure is correctly configured, and the issue is specific to the device.

### Cause

The UEFI network stack on the device was incorrectly configured.

### Resolution

To correctly configure the UEFI network stack of the Surface Pro 4, you have to use Microsoft Surface Enterprise Management Mode (SEMM). For information about SEMM, see [Enroll and configure Surface devices with SEMM](https://docs.microsoft.com/surface/enroll-and-configure-surface-devices-with-semm).

> [!NOTE]
> If you cannot use SEMM, you may be able to configure the Surface Pro 4 to use BitLocker Network Unlock by configuring the device to use the network as its first boot option.

## Unable to use BitLocker Network Unlock feature on a Windows client computer

You have configured BitLocker Network Unlock as described in [BitLocker: How to enable Network Unlock](https://docs.microsoft.com/windows/device-security/bitlocker/bitlocker-how-to-enable-network-unlock). You have a Windows 8-based client computer that is connected to the corporate LAN by using an Ethernet Cable. However, when you restart the computer, it still prompts you for the BitLocker PIN.  

### Cause

A Windows 8-based or Windows Server 2012-based client computer sometimes does not receive or use the Network Unlock protector, depending on whether the client receives unrelated BOOTP replies from a DHCP server or WDS server.

DHCP servers may send any DHCP options to a BOOTP client as allowed by the DHCP options and BOOTP vendor extensions. This means that because a DHCP server supports BOOTP clients, the DHCP server replies to BOOTP requests.

The manner in which a DHCP server handles an incoming message depends in part on whether the message uses the Message Type option:

- The first two messages that the BitLocker Network Unlock client sends are DHCP DISCOVER\REQUEST messages. They use the Message Type option, so the DHCP server treats them as DHCP messages.  
- The third message that the BitLocker Network Unlock client sends does not have the Message Type option. The DHCP server treats the message as a BOOTP request.

A DHCP server that supports BOOTP clients must interact with those clients according to the BOOTP protocol. The server must create a BOOTP BOOTREPLY message instead of a DHCP DHCPOFFER message. (In other words, the server must not include the DHCP message option type and must not exceed the size limit for BOOTREPLY messages.) After the server sends the BOOTP BOOTREPLY message, the server marks a binding for a BOOTP client as BOUND. A non-DHCP client does not send a DHCPREQUEST message, nor does that client expect a DHCPACK message.

If a DHCP server that is not configured to support BOOTP clients receives a BOOTREQUEST message from a BOOTP client, that server silently discards the BOOTREQUEST message.

For more information about DHCP and BitLocker Network Unlock, see [BitLocker: How to enable Network Unlock: Network Unlock sequence](https://docs.microsoft.com/windows/device-security/bitlocker/bitlocker-how-to-enable-network-unlock#network-unlock-sequence)

### Resolution

To resolve this issue, change the configuration of the DHCP server by changing the **DHCP** option from **DHCP and BOOTP** to **DHCP**.
