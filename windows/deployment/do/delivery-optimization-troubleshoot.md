---
title: Troubleshoot Delivery Optimization
description: In this article, learn how to troubleshoot Delivery Optimization.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: how-to
author: cmknox
ms.author: carmenf
ms.reviewer: mstewart
manager: aaroncz
ms.collection:
  - tier3
  - essentials-get-started
ms.localizationpriority: medium
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-delivery-optimization target=_blank>Delivery Optimization</a>
ms.date: 07/23/2024
---

# Troubleshoot Delivery Optimization

This article discusses how to troubleshoot Delivery Optimization.

## DO Troubleshooter

[Check out](https://aka.ms/do-fix) for the new Delivery Optimization Troubleshooter. This tool provides a device health check to verify the device is set up properly to use Delivery Optimization. To scope the output more specifically, use one of the available switches:

- -HealthCheck: Provides an overall check of the device setup to ensure Delivery Optimization communication is possible on the device.
- -P2P: Provides output specific to P2P settings, efficiency, and errors.
- -MCC: Provides output specific to MCC settings and verifies the client can access the cache server.

## Common problems and solutions

This section summarizes common problems and some solutions to try.

### If you don't see any bytes from peers

If you don't see any bytes coming from peers, the cause might be one of the following issues:

- Clients aren't able to reach the Delivery Optimization cloud services.
- The cloud service doesn't see other peers on the network.
- Clients aren't able to connect to peers that are offered back from the cloud service.
- None of the computers on the network are getting updates from peers.

### Clients aren't able to reach the Delivery Optimization cloud services

Try these steps:

1. Start a download of an app that is larger than 50 MB from the Store (for example "Candy Crush Saga").
1. Run `Get-DeliveryOptimizationStatus` from an elevated PowerShell window and observe the [DODownloadMode](waas-delivery-optimization-reference.md#download-mode) setting. For peering to work, download mode should be 1, 2, or 3.
1. If the download mode is 99, it could indicate your device is unable to reach the Delivery Optimization cloud services. Ensure that the Delivery Optimization host names are allowed access: most importantly **\*.prod.do.dsp.mp.microsoft.com**.

#### The cloud service doesn't see other peers on the network

Try these steps:

1. Download the same app on two different devices on the same network, waiting 10 - 15 minutes between downloads.
1. Run `Get-DeliveryOptimizationStatus` from an elevated PowerShell window and ensure that **[DODownloadMode](waas-delivery-optimization-reference.md#download-mode)** is 1 or 2 on both devices.
1. Run `Get-DeliveryOptimizationPerfSnap` from an elevated PowerShell window on the second device. The **NumberOfPeers** field should be nonzero.
1. If the number of peers is zero and **[DODownloadMode](waas-delivery-optimization-reference.md#download-mode)** is 1, ensure that both devices are using the same public IP address to reach the internet (you can easily do this by opening a browser window and do a search for "what is my IP"). In the case where devices aren't reporting the same public IP address, configure **[DODownloadMode](waas-delivery-optimization-reference.md#download-mode)** to 2 (Group) and use a custom **[DOGroupID (Guid)](waas-delivery-optimization-reference.md#group-id)**.

> [!NOTE]
> Starting in Windows 10, version 2004, `Get-DeliveryOptimizationStatus` has a new option `-PeerInfo` which returns a real-time list of potential peers per file, including which peers are successfully connected and the total bytes sent or received from each peer.

### Clients aren't able to connect to peers offered by the cloud service

Try a Telnet test between two devices on the network to ensure they can connect using port 7680. Follow these steps:

1. Install Telnet by running `dism /online /Enable-Feature /FeatureName:TelnetClient` from an elevated command prompt.
1. Run the test. For example, if you're on device with IP 192.168.8.12 and you're trying to test the connection to 192.168.9.17 run `telnet 192.168.9.17 7680` (the syntax is *telnet [destination IP] [port]*. When you see a connection error or a blinking cursor like this /_. The blinking cursor means success.

> [!NOTE]
> You can also use [Test-NetConnection](/powershell/module/nettcpip/test-netconnection) instead of Telnet to run the test.
> **Test-NetConnection -ComputerName 192.168.9.17 -Port 7680**

### None of the computers on the network are getting updates from peers

Check Delivery Optimization settings that could limit participation in peer caching. Check whether the following settings in assigned group policies, local group policies, or MDM policies are too restrictive:

- Minimum RAM (inclusive) allowed to use peer caching
- Minimum disk size allowed to use peer caching
- Enable peer caching while the device connects using VPN.
- Allow uploads when the device is on battery while under the set battery level
