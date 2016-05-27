---
title: Windows Firewall with Advanced Security Overview (Windows 10)
description: Windows Firewall with Advanced Security Overview
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Windows Firewall with Advanced Security Overview

**Applies to**
-   Windows 10
-   Windows Server 2016 Technical Preview

This is an overview of the Windows Firewall with Advanced Security (WFAS) and Internet Protocol security (IPsec) features.

## Feature description

Windows Firewall with Advanced Security is an important part of a layered security model. By providing host-based, two-way network traffic filtering for a device, Windows Firewall with Advanced Security blocks unauthorized network traffic flowing into or out of the local device. Windows Firewall with Advanced Security also works with Network Awareness so that it can apply security settings appropriate to the types of networks to which the device is connected. Windows Firewall and Internet Protocol Security (IPsec) configuration settings are integrated into a single Microsoft Management Console (MMC) named Windows Firewall with Advanced Security, so Windows Firewall is also an important part of your network’s isolation strategy.

## Practical applications


To help address your organizational network security challenges, Windows Firewall with Advanced Security offers the following benefits:

-   **Reduces the risk of network security threats.**  Windows Firewall with Advanced Security reduces the attack surface of a device, providing an additional layer to the defense-in-depth model. Reducing the attack surface of a device increases manageability and decreases the likelihood of a successful attack.

-   **Safeguards sensitive data and intellectual property.**  With its integration with IPsec, Windows Firewall with Advanced Security provides a simple way to enforce authenticated, end-to-end network communications. It provides scalable, tiered access to trusted network resources, helping to enforce integrity of the data, and optionally helping to protect the confidentiality of the data.

-   **Extends the value of existing investments.**  Because Windows Firewall with Advanced Security is a host-based firewall that is included with the operating system, there is no additional hardware or software required. Windows Firewall with Advanced Security is also designed to complement existing non-Microsoft network security solutions through a documented application programming interface (API).

## In this section

| Topic | Description
| - | - |
| [Isolating Windows Store Apps on Your Network](isolating-apps-on-your-network.md) | You can customize your Windows Firewall configuration to isolate the network access of Windows Store apps that run on devices. |
| [Securing End-to-End IPsec Connections by Using IKEv2 in Windows Server 2012](securing-end-to-end-ipsec-connections-by-using-ikev2.md) | You can use IKEv2 to help secure your end-to-end IPSec connections. |
| [Windows Firewall with Advanced Security Administration with Windows PowerShell](windows-firewall-with-advanced-security-administration-with-windows-powershell.md) | Learn more about using Windows PowerShell to manage the Windows Firewall. |
| [Windows Firewall with Advanced Security Design Guide](windows-firewall-with-advanced-security-design-guide.md) | Learn how to create a design for deploying Windows Firewall with Advanced Security. |
| [Windows Firewall with Advanced Security Deployment Guide](windows-firewall-with-advanced-security-deployment-guide.md) |  Learn how to deploy Windows Firewall with Advanced Security. |
