---
title: BitLocker Network Unlock known issues
description: Describes several known issues that you may encounter while using Network Unlock, and provided guidance for addressing those issues.
ms.technology: itpro-security
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.reviewer: kaushika
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.custom: bitlocker
ms.date: 11/08/2022
---

# BitLocker Network Unlock: known issues

By using the BitLocker Network Unlock feature, you can manage computers remotely without having to enter a BitLocker PIN when each computer starts up. To configure this behavior, your environment needs to meet the following requirements:

- Each computer belongs to a domain.
- Each computer has a wired connection to the internal network.
- The internal network uses DHCP to manage IP addresses.
- Each computer has a DHCP driver implemented in its Unified Extensible Firmware Interface (UEFI) firmware.

For general guidelines about how to troubleshoot Network Unlock, see [How to enable Network Unlock: Troubleshoot Network Unlock](./bitlocker-how-to-enable-network-unlock.md#troubleshoot-network-unlock).

This article describes several known issues that you may encounter when you use Network Unlock, and provides guidance to address these issues.

## Tip: Detect whether BitLocker Network Unlock is enabled on a specific computer

> [!TIP]
> BitLocker Network Unlock can be detetected if it is enabled on a specific computer use the following steps on UEFI computers:
>
> 1. Open an elevated command prompt window and run the following command:
>
>   ``` syntax
>   manage-bde.exe -protectors -get <Drive>
>   ```
>
> For example:
>
>   ``` syntax
>   manage-bde.exe -protectors -get C:
>   ```
>
> If the output of this command includes a key protector of type **TpmCertificate (9)**, the configuration is correct for BitLocker Network Unlock.
>
> 2. Start Registry Editor, and verify the following settings:
>
>    1. The following registry key exists and has the following value:
>
>      - **Subkey**: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE`
>      - **Type**: `REG_DWORD`
>      - **Value**: `OSManageNKP` equal to `1` (True)
>
>    2. The registry key `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SystemCertificates\FVE_NKP\Certificates` has an entry whose name matches the name of the certificate thumbprint of the Network Unlock key protector that you found in step 1.

## On a Surface Pro 4 device, BitLocker Network Unlock doesn't work because the UEFI network stack is incorrectly configured

You've configured BitLocker Network Unlock as described in [BitLocker: How to enable Network Unlock](/windows/device-security/bitlocker/bitlocker-how-to-enable-network-unlock). You've configured the UEFI of the device to use DHCP. However, when you restart the device, it still prompts you for the BitLocker PIN.  

You test another device, such as a different type of tablet or laptop PC that's configured to use the same infrastructure. The device restarts as expected, without prompting for the BitLocker PIN. You conclude that the infrastructure is correctly configured, and the issue is specific to the device.

### Cause of BitLocker Network Unlock not working on Surface Pro 4

The UEFI network stack on the device was incorrectly configured.

### Resolution for BitLocker Network Unlock not working on Surface Pro 4

To correctly configure the UEFI network stack of the Surface Pro 4, you have to use Microsoft Surface Enterprise Management Mode (SEMM). For information about SEMM, see [Enroll and configure Surface devices with SEMM](/surface/enroll-and-configure-surface-devices-with-semm).

> [!NOTE]
> If you cannot use SEMM, you may be able to configure the Surface Pro 4 to use BitLocker Network Unlock by configuring the device to use the network as its first boot option.

## Unable to use BitLocker Network Unlock feature on a Windows client computer

You have configured BitLocker Network Unlock as described in [BitLocker: How to enable Network Unlock](/windows/device-security/bitlocker/bitlocker-how-to-enable-network-unlock). You have a Windows 8 client computer that is connected to the internal network with an ethernet cable. However, when you restart the computer, it still prompts you for the BitLocker PIN.

### Cause of unable to use BitLocker Network Unlock feature on a Windows client computer

A Windows 8-based or Windows Server 2012-based client computer sometimes doesn't receive or use the Network Unlock protector, depending on whether the client receives unrelated BOOTP replies from a DHCP server or WDS server.

DHCP servers may send any DHCP options to a BOOTP client as allowed by the DHCP options and BOOTP vendor extensions. This behavior means that because a DHCP server supports BOOTP clients, the DHCP server replies to BOOTP requests.

The manner in which a DHCP server handles an incoming message depends in part on whether the message uses the Message Type option:

- The first two messages that the BitLocker Network Unlock client sends are DHCP DISCOVER\REQUEST messages. They use the Message Type option, so the DHCP server treats them as DHCP messages.
- The third message that the BitLocker Network Unlock client sends doesn't have the Message Type option. The DHCP server treats the message as a BOOTP request.

A DHCP server that supports BOOTP clients must interact with those clients according to the BOOTP protocol. The server must create a BOOTP BOOTREPLY message instead of a DHCP DHCPOFFER message. (In other words, the server must not include the DHCP message option type and must not exceed the size limit for BOOTREPLY messages.) After the server sends the BOOTP BOOTREPLY message, the server marks a binding for a BOOTP client as BOUND. A non-DHCP client doesn't send a DHCPREQUEST message, nor does that client expect a DHCPACK message.

If a DHCP server that isn't configured to support BOOTP clients receives a BOOTREQUEST message from a BOOTP client, that server silently discards the BOOTREQUEST message.

For more information about DHCP and BitLocker Network Unlock, see [BitLocker: How to enable Network Unlock: Network Unlock sequence](/windows/device-security/bitlocker/bitlocker-how-to-enable-network-unlock#network-unlock-sequence).

### Resolution for unable to use BitLocker Network Unlock feature on a Windows client computer

To resolve this issue, change the configuration of the DHCP server by changing the **DHCP** option from **DHCP and BOOTP** to **DHCP**.
