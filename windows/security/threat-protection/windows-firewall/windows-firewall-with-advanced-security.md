---
title: Windows Defender Firewall with Advanced Security (Windows 10)
description: Learn overview information about the Windows Defender Firewall with Advanced Security (WFAS) and Internet Protocol security (IPsec) features.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 10/13/2017
ms.reviewer: 
ms.custom: asr
---

# Windows Defender Firewall with Advanced Security

**Applies to**
-   Windows 10
-   Windows Server 2016

This is an overview of the Windows Defender Firewall with Advanced Security (WFAS) and Internet Protocol security (IPsec) features.

## Overview of Windows Defender Firewall with Advanced Security

Windows Defender Firewall in Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 is a stateful host firewall that helps secure the device by allowing you to create rules that determine which network traffic is permitted to enter the device from the network and which network traffic the device is allowed to send to the network. Windows Defender Firewall also supports Internet Protocol security (IPsec), which you can use to require authentication from any device that is attempting to communicate with your device. When authentication is required, devices that cannot be authenticated as a trusted device cannot communicate with your device. You can also use IPsec to require that certain network traffic is encrypted to prevent it from being read by network packet analyzers that could be attached to the network by a malicious user.

The Windows Defender Firewall with Advanced Security MMC snap-in is more flexible and provides much more functionality than the consumer-friendly Windows Defender Firewall interface found in the Control Panel. Both interfaces interact with the same underlying services, but provide different levels of control over those services. While the Windows Defender Firewall Control Panel program can protect a single device in a home environment, it does not provide enough centralized management or security features to help secure more complex network traffic found in a typical business enterprise environment.



## Feature description

Windows Defender Firewall with Advanced Security is an important part of a layered security model. By providing host-based, two-way network traffic filtering for a device, Windows Defender Firewall blocks unauthorized network traffic flowing into or out of the local device. Windows Defender Firewall also works with Network Awareness so that it can apply security settings appropriate to the types of networks to which the device is connected. Windows Defender Firewall and Internet Protocol Security (IPsec) configuration settings are integrated into a single Microsoft Management Console (MMC) named Windows Defender Firewall, so Windows Defender Firewall is also an important part of your network’s isolation strategy.

## Practical applications


To help address your organizational network security challenges, Windows Defender Firewall offers the following benefits:

-   **Reduces the risk of network security threats.**  Windows Defender Firewall reduces the attack surface of a device, providing an additional layer to the defense-in-depth model. Reducing the attack surface of a device increases manageability and decreases the likelihood of a successful attack.

-   **Safeguards sensitive data and intellectual property.**  With its integration with IPsec, Windows Defender Firewall provides a simple way to enforce authenticated, end-to-end network communications. It provides scalable, tiered access to trusted network resources, helping to enforce integrity of the data, and optionally helping to protect the confidentiality of the data.

-   **Extends the value of existing investments.**  Because Windows Defender Firewall is a host-based firewall that is included with the operating system, there is no additional hardware or software required. Windows Defender Firewall is also designed to complement existing non-Microsoft network security solutions through a documented application programming interface (API).


