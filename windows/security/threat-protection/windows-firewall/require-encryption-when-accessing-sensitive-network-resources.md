---
title: Require Encryption When Accessing Sensitive Network Resources (Windows 10)
description: Require Encryption When Accessing Sensitive Network Resources
ms.assetid: da980d30-a68b-4e2a-ba63-94726355ce6f
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

# Require Encryption When Accessing Sensitive Network Resources

**Applies to**
-   Windows 10
-   Windows Server 2016

The use of authentication in the previously described goal ([Restrict Access to Only Trusted Devices](restrict-access-to-only-trusted-devices.md)) enables a device in the isolated domain to block traffic from untrusted devices. However, it does not prevent an untrusted device from eavesdropping on the network traffic shared between two trusted devices, because by default network packets are not encrypted.

For devices that share sensitive information over the network, Windows Defender Firewall with Advanced Security allows you to require that all such network traffic be encrypted. Using encryption can help you comply with regulatory and legislative requirements such as those found in the Federal Information Security Management Act of 2002 (FISMA), the Sarbanes-Oxley Act of 2002, the Health Insurance Portability and Accountability Act of 1996 (HIPAA), and other government and industry regulations. By creating connection security rules that apply to devices that host and exchange sensitive data, you can help protect the confidentiality of that data by encrypting it.

The following illustration shows an encryption zone in an isolated domain. The rules that implement both the isolated domain and the different zones are deployed by using Group Policy and Active Directory.

![encryption zone in an isolated domain](images/wfas-domainisoencrypt.gif)

This goal provides the following benefits:

-   Devices in the encryption zone require authentication to communicate with other devices. This works no differently from the domain isolation goal and design. For more info, see [Restrict Access to Only Trusted Devices](restrict-access-to-only-trusted-devices.md).

-   Devices in the encryption zone require that all inbound and outbound network traffic be encrypted.

    For example, Woodgrove Bank processes sensitive customer data on a device that must be protected from eavesdropping by devices on the network. Connection security rules specify that all traffic must be encrypted by a sufficiently complex encryption algorithm to help protect the data.

-   Devices in the encryption zone are often good candidates for server isolation, where access is limited to only computer accounts and user accounts that are members of an authorized access group. In many organizations, the encryption zone and the server isolation zone are one and the same. For more info, see [Restrict Access to Only Specified Users or Devices](restrict-access-to-only-specified-users-or-devices.md).

The following components are required for this deployment goal:

-   **Active Directory**: Active Directory supports centralized management of connection security rules by configuring the rules in one or more GPOs that can be automatically applied to all relevant devices in the domain.

**Next: **[Restrict Access to Only Specified Users or Devices](restrict-access-to-only-specified-users-or-devices.md)
