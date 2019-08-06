---
title: Miracast on existing wireless network or LAN
description: Windows 10 enables you to send a Miracast stream over a local network.
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 06/20/2019
ms.reviewer: 
manager: dansimp
ms.localizationpriority: medium
---

# Miracast on existing wireless network or LAN

In the Windows 10, version 1703, Microsoft has extended the ability to send a Miracast stream over a local network rather than over a direct wireless link. This functionality is based on the [Miracast over Infrastructure Connection Establishment Protocol (MS-MICE)](https://msdn.microsoft.com/library/mt796768.aspx).

Miracast over Infrastructure offers a number of benefits:

- Windows automatically detects when sending the video stream over this path is applicable.
- Windows will only choose this route if the connection is over Ethernet or a secure Wi-Fi network.
- Users do not have to change how they connect to a Miracast receiver. They use the same UX as for standard Miracast connections.
- No changes to current wireless drivers or PC hardware are required.
- It works well with older wireless hardware that is not optimized for Miracast over Wi-Fi Direct.
- It leverages an existing connection which both reduces the time to connect and provides a very stable stream.


## How it works

Users attempt to connect to a Miracast receiver as they did previously. When the list of Miracast receivers is populated, Windows 10 will identify that the receiver is capable of supporting a connection over the infrastructure. When the user selects a Miracast receiver, Windows 10 will attempt to resolve the device's hostname via standard DNS, as well as via multicast DNS (mDNS). If the name is not resolvable via either DNS method, Windows 10 will fall back to establishing the Miracast session using the standard Wi-Fi direct connection.


## Enabling Miracast over Infrastructure 

If you have a Surface Hub or other Windows 10 device that has been updated to Windows 10, version 1703, then you automatically have this new feature. To take advantage of it in your environment, you need to ensure the following is true within your deployment:

- The Surface Hub or device (Windows PC or phone) needs to be running Windows 10, version 1703.
- A Surface Hub or Windows PC can act as a Miracast over Infrastructure *receiver*. A Windows PC or phone can act as a Miracast over Infrastructure *source*.
    - As a Miracast receiver, the Surface Hub or device must be connected to your enterprise network via either Ethernet or a secure Wi-Fi connection (e.g. using either WPA2-PSK or WPA2-Enterprise security). If the Surface Hub or device is connected to an open Wi-Fi connection, Miracast over Infrastructure will disable itself.
    - As a Miracast source, the Windows PC or phone must be connected to the same enterprise network via Ethernet or a secure Wi-Fi connection.
- The DNS Hostname (device name) of the Surface Hub or device needs to be resolvable via your DNS servers. You can achieve this by either allowing your Surface Hub to register automatically via Dynamic DNS, or by manually creating an A or AAAA record for the Surface Hub's hostname. 
- Windows 10 PCs must be connected to the same enterprise network via Ethernet or a secure Wi-Fi connection. 
- On Windows 10 PCs, the **Projecting to this PC** feature must be enabled within System Settings, and the device must have a Wi-Fi interface enabled in order to respond to discovery requests. 


It is important to note that Miracast over Infrastructure is not a replacement for standard Miracast. Instead, the functionality is complementary, and provides an advantage to users who are part of the enterprise network. Users who are guests to a particular location and don’t have access to the enterprise network will continue to connect using the Wi-Fi Direct connection method.

The **InBoxApps/WirelessProjection/PinRequired** setting in the [SurfaceHub configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/surfacehub-csp) is not required for Miracast over Infrastructure. This is because Miracast over Infrastructure only works when both devices are connected to the same enterprise network. This removes the security restriction that was previously missing from Miracast. We recommend that you continue using this setting (if you used it previously) as Miracast will fall back to regular Miracast if the infrastructure connection does not work. 
