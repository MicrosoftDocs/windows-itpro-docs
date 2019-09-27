---
title: BitLocker Network Unlock known issues
description: 
ms.reviewer: kaushika
ms.prod: w10
ms.sitesec: library
ms.localizationpriority: medium
author: Teresa-Motiv
ms.author: v-tea
manager: kaushika
audience: ITPro
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 9/27/2019
---
# BitLocker Network Unlock--known issues

By using the BitLocker Network Unlock feature, you can manage computers remotely without having to enter a BitLocker PIN for each computer when it starts up. Your environment must have the following configuration:

- The computers must belong to a domain
- The computers must have a wired connection to the corporate network
- The corporate network must use DHCP to manage IP addresses
- Each computer must have a DHCP drive rimplemented in its UEFI firmware

For general guidelines about how to troubleshoot Network Unlock, see [How to enable Network Unlock: Troubleshoot Network Unlock](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-how-to-enable-network-unlock#troubleshoot-network-unlock)

This article describes several known issues that you may encounter while using Network Unlock:

<a id="list"></a>

- [Surface: BitLocker Network unlock does not work on Surface Pro 4 device due to incorrect configuration of UEFI network stack](#scenario-1)
- [Tip: Detect programmatically whether BitLocker Network Unlock is enabled on a specific computer](#scenario-2)
- [Unable to use BitLocker Network Unlock feature on Windows client computer](#scenario-4)

## <a id="scenario-1"></a>Surface: BitLocker Network unlock does not work on Surface Pro 4 device due to incorrect configuration of UEFI network stack

BitLocker Network unlock was configured as described in [BitLocker: How to enable Network Unlock](https://docs.microsoft.com/windows/device-security/bitlocker/bitlocker-how-to-enable-network-unlock).

UEFI is set for DHCP, however, when booting a prompt for the PIN is still shown.

Testing with another device (HP Elite X2 tablet) we could conclude that the BitLocker Network unlock configuration is correct.

### Cause

Very likely network stack was not configured correctly.

### Resolution

SEMM is required to enable the network stack, it is not visible in the UI. Otherwise, setting network as the first boot option will also allow network stack loading in the UEFI if we cannot use SEMM.

For information about SEMM, see [Enroll and configure Surface devices with SEMM](https://docs.microsoft.com/surface/enroll-and-configure-surface-devices-with-semm)

[Back to list](#list)

## <a id="scenario-2"></a>Tip: Detect programmatically whether BitLocker Network Unlock is enabled on a specific computer

Applies for both x64 and x32 UEFI systems.

Detect the following values:

- Registry entry **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\FVE: OSManageNKP** is set to **1**
- A Network Unlock protector (key protector of type **TpmCertificate (9)**) exists on the boot volume
- A registry entry exists in the **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\SystemCertificates\\FVE\_NKP\\Certificates** subkey that matches the name of the certificate thumbprint of the Network Unlock protector

[Back to list](#list)

## <a id="scenario-4"></a>Unable to use BitLocker Network Unlock feature on Windows client computer

From [A Windows 8-based client computer does not use the BitLocker Network Unlock feature](https://internal.support.services.microsoft.com/help/2891694/a-windows-8-based-client-computer-does-not-use-the-bitlocker-network-u)

On a Windows 8-based client computer, you are prompted to enter the BitLocker PIN to start Windows. This occurs even though the computer is connected through an Ethernet cable to the physical corporate LAN and the BitLocker Network Unlock feature is enabled and implemented.

### Cause

A Windows 8-based or Windows Server 2012-based client computer sometimes may not receive or use the Network Unlock Protector feature, depending on whether the client receives unrelated BOOTP replies from a DHCP server or WDS server.

Any message that is received by a DHCP server that includes a DHCP message option type 51 is assumed to have been sent by a DHCP client. Messages that do not have the DHCP Message Type option are assumed to have been sent by a BOOTP client.

- The DHCP DISCOVER\REQUEST that is sent by the BitLocker Network Unlock client in its first two requests has the Message Type option. This means that the requests are DHCP protocol based.  
- The DHCP request (that is, the third request) that is sent by client does not have the Message Type option. This means that the request is BOOTP protocol based.

A DHCP server that supports BOOTP clients must interact with BOOTP clients according to the BOOTP protocol. The server must create a BOOTP BOOTREPLY message instead of a DHCP DHCPOFFER message. (That is, the server must not include the DHCP message option type and must not exceed the size limit for BOOTREPLY messages.)

The server marks a binding for a BOOTP client as BOUND after the server sends the BOOTP BOOTREPLY message. A non-DHCP client will not send a DHCPREQUEST message, nor will that client expect a DHCPACK message.

DHCP servers may send any DHCP options to a BOOTP client as allowed by the DHCP options and BOOTP vendor extensions.

This means that as long as a DHCP server supports BOOTP clients, the DHCP server will reply to BOOTP requests.

If a DHCP server that is not configured to support BOOTP clients receives a BOOTREQUEST message from a BOOTP client, that server silently discards the BOOTREQUEST message.

### Resolution

To resolve this issue, turn off the BOOTP option on the DHCP server, log on to the DHCP server, and then change the DHCP option from DHCP and BOOTP to DHCP

[Back to list](#list)
