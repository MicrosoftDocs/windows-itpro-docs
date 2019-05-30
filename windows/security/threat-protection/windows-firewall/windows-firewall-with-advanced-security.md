---
title: Windows Defender Firewall with Advanced Security (Windows 10)
description: Windows Defender Firewall with Advanced Security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 10/13/2017
---

# Windows Defender Firewall with Advanced Security

**Applies to**
-   Windows 10
-   Windows Server 2016

This is an overview of the Windows Defender Firewall with Advanced Security (WFAS) and Internet Protocol security (IPsec) features.

## Feature description

Windows Defender Firewall with Advanced Security
is an important part of a layered security model. By providing host-based, two-way network traffic filtering for a device, Windows Defender Firewall blocks unauthorized network traffic flowing into or out of the local device. Windows Defender Firewall also works with Network Awareness so that it can apply security settings appropriate to the types of networks to which the device is connected. Windows Defender Firewall and Internet Protocol Security (IPsec) configuration settings are integrated into a single Microsoft Management Console (MMC) named Windows Defender Firewall, so Windows Defender Firewall is also an important part of your network’s isolation strategy.

## Practical applications


To help address your organizational network security challenges, Windows Defender Firewall offers the following benefits:

-   **Reduces the risk of network security threats.**  Windows Defender Firewall reduces the attack surface of a device, providing an additional layer to the defense-in-depth model. Reducing the attack surface of a device increases manageability and decreases the likelihood of a successful attack.

-   **Safeguards sensitive data and intellectual property.**  With its integration with IPsec, Windows Defender Firewall provides a simple way to enforce authenticated, end-to-end network communications. It provides scalable, tiered access to trusted network resources, helping to enforce integrity of the data, and optionally helping to protect the confidentiality of the data.

-   **Extends the value of existing investments.**  Because Windows Defender Firewall is a host-based firewall that is included with the operating system, there is no additional hardware or software required. Windows Defender Firewall is also designed to complement existing non-Microsoft network security solutions through a documented application programming interface (API).

## In this section

| Topic | Description
| - | - |
| [Isolating Microsoft Store Apps on Your Network](isolating-apps-on-your-network.md) | You can customize your Windows Defender Firewall configuration to isolate the network access of Microsoft Store apps that run on devices. |
| [Securing End-to-End IPsec Connections by Using IKEv2](securing-end-to-end-ipsec-connections-by-using-ikev2.md) | You can use IKEv2 to help secure your end-to-end IPSec connections. |
| [Windows Defender Firewall with Advanced Security Administration with Windows PowerShell](windows-firewall-with-advanced-security-administration-with-windows-powershell.md) | Learn more about using Windows PowerShell to manage the Windows Defender Firewall. |
| [Windows Defender Firewall with Advanced Security Design Guide](windows-firewall-with-advanced-security-design-guide.md) | Learn how to create a design for deploying Windows Defender Firewall with Advanced Security. |
| [Windows Defender Firewall with Advanced Security Deployment Guide](windows-firewall-with-advanced-security-deployment-guide.md) |  Learn how to deploy Windows Defender Firewall with Advanced Security. |
