---
title: Require Encryption When Accessing Sensitive Network Resources (Windows)
description: Windows Defender Firewall with Advanced Security allows you to require that all network traffic in an isolated domain be encrypted.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Require Encryption When Accessing Sensitive Network Resources


The use of authentication in the previously described goal ([Restrict Access to Only Trusted Devices](restrict-access-to-only-trusted-devices.md)) enables a device in the isolated domain to block traffic from untrusted devices. However, it doesn't prevent an untrusted device from eavesdropping on the network traffic shared between two trusted devices, because by default network packets aren't encrypted.

For devices that share sensitive information over the network, Windows Defender Firewall with Advanced Security allows you to require that all such network traffic be encrypted. Using encryption can help you comply with regulatory and legislative requirements such as those found in the Federal Information Security Management Act of 2002 (FISMA), the Sarbanes-Oxley Act of 2002, the Health Insurance Portability and Accountability Act of 1996 (HIPAA), and other government and industry regulations. By creating connection security rules that apply to devices that host and exchange sensitive data, you can help protect the confidentiality of that data by encrypting it.

The following illustration shows an encryption zone in an isolated domain. The rules that implement both the isolated domain and the different zones are deployed by using Group Policy and Active Directory.

![encryption zone in an isolated domain.](images/wfas-domainisoencrypt.gif)

This goal provides the following benefits:

-   Devices in the encryption zone require authentication to communicate with other devices. This rule works no differently from the domain isolation goal and design. For more information, see [Restrict Access to Only Trusted Devices](restrict-access-to-only-trusted-devices.md).

-   Devices in the encryption zone require that all inbound and outbound network traffic be encrypted.

    For example, Woodgrove Bank processes sensitive customer data on a device that must be protected from eavesdropping by devices on the network. Connection security rules specify that all traffic must be encrypted by a sufficiently complex encryption algorithm to help protect the data.

-   Devices in the encryption zone are often good candidates for server isolation, where access is limited to only computer accounts and user accounts that are members of an authorized access group. In many organizations, the encryption zone and the server isolation zone are one and the same. For more info, see [Restrict Access to Only Specified Users or Devices](restrict-access-to-only-specified-users-or-devices.md).

The following components are required for this deployment goal:

-   **Active Directory**: Active Directory supports centralized management of connection security rules by configuring the rules in one or more GPOs that can be automatically applied to all relevant devices in the domain.

**Next:** [Restrict Access to Only Specified Users or Devices](restrict-access-to-only-specified-users-or-devices.md)
