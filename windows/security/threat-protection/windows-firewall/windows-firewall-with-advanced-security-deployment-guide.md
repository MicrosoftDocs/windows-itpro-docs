---
title: Windows Defender Firewall with Advanced Security Deployment Guide (Windows 10)
description: Windows Defender Firewall with Advanced Security Deployment Guide
ms.assetid: 56b51b97-1c38-481e-bbda-540f1216ad56
ms.reviewer: 
ms.author: dansimp
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
ms.date: 08/17/2017
---

# Windows Defender Firewall with Advanced Security Deployment Guide

**Applies to**
-   Windows 10
-   Windows Server 2016

You can use the Windows Defender Firewall with Advanced Security MMC snap-in with devices running at least Windows Vista or Windows Server 2008 to help protect the devices and the data that they share across a network.

You can use Windows Defender Firewall to control access to the device from the network. You can create rules that allow or block network traffic in either direction based on your business requirements. You can also create IPsec connection security rules to help protect your data as it travels across the network from device to device.

## About this guide

This guide is intended for use by system administrators and system engineers. It provides detailed guidance for deploying a Windows Defender Firewall with Advanced Security design that you or an infrastructure specialist or system architect in your organization has selected.

Begin by reviewing the information in [Planning to Deploy Windows Defender Firewall with Advanced Security](planning-to-deploy-windows-firewall-with-advanced-security.md).

If you have not yet selected a design, we recommend that you wait to follow the instructions in this guide until after you have reviewed the design options in the [Windows Defender Firewall with Advanced Security Design Guide](windows-firewall-with-advanced-security-design-guide.md) and selected the one most appropriate for your organization.

After you select your design and gather the required information about the zones (isolation, boundary, and encryption), operating systems to support, and other details, you can then use this guide to deploy your Windows Defender Firewall with Advanced Security design in your production environment. This guide provides steps for deploying any of the following primary designs that are described in the Design Guide:

-   [Basic Firewall Policy Design](basic-firewall-policy-design.md)

-   [Domain Isolation Policy Design](domain-isolation-policy-design.md)

-   [Server Isolation Policy Design](server-isolation-policy-design.md)

-   [Certificate-based Isolation Policy Design](certificate-based-isolation-policy-design.md)

Use the checklists in [Implementing Your Windows Defender Firewall with Advanced Security Design Plan](implementing-your-windows-firewall-with-advanced-security-design-plan.md) to determine how best to use the instructions in this guide to deploy your particular design.

>**Caution:**  We recommend that you use the techniques documented in this guide only for GPOs that must be deployed to the majority of the devices in your organization, and only when the OU hierarchy in your Active Directory domain does not match the deployment needs of these GPOs. These characteristics are typical of GPOs for server and domain isolation scenarios, but are not typical of most other GPOs. When the OU hierarchy supports it, deploy a GPO by linking it to the lowest level OU that contains all of the accounts to which the GPO applies.

In a large enterprise environment with hundreds or thousands of GPOs, using this technique with too many GPOs can result in user or device accounts that are members of an excessive number of groups; this can result in network connectivity problems if network protocol limits are exceeded. 
 
## What this guide does not provide

This guide does not provide:

-   Guidance for creating firewall rules for specific network applications. For this information, see [Planning Settings for a Basic Firewall Policy](planning-settings-for-a-basic-firewall-policy.md) in the Windows Defender Firewall with Advanced Security Design Guide.

-   Guidance for setting up Active Directory Domain Services (AD DS) to support Group Policy.

-   Guidance for setting up certification authorities (CAs) to create certificates for certificate-based authentication.

## Overview of Windows Defender Firewall with Advanced Security

Windows Defender Firewall in Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 is a stateful host firewall that helps secure the device by allowing you to create rules that determine which network traffic is permitted to enter the device from the network and which network traffic the device is allowed to send to the network. Windows Defender Firewall also supports Internet Protocol security (IPsec), which you can use to require authentication from any device that is attempting to communicate with your device. When authentication is required, devices that cannot be authenticated as a trusted device cannot communicate with your device. You can also use IPsec to require that certain network traffic is encrypted to prevent it from being read by network packet analyzers that could be attached to the network by a malicious user.

The Windows Defender Firewall with Advanced Security MMC snap-in is more flexible and provides much more functionality than the consumer-friendly Windows Defender Firewall interface found in the Control Panel. Both interfaces interact with the same underlying services, but provide different levels of control over those services. While the Windows Defender Firewall Control Panel program can protect a single device in a home environment, it does not provide enough centralized management or security features to help secure more complex network traffic found in a typical business enterprise environment.

For more information about Windows Defender Firewall with Advanced Security, see [Windows Defender Firewall with Advanced Security Overview](windows-firewall-with-advanced-security.md).
