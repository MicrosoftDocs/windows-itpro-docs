---
title: Mapping your implementation goals to a Windows Firewall with Advanced Security design (Windows)
description: Mapping your implementation goals to a Windows Firewall with Advanced Security design
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

#  Mapping your implementation goals to a Windows Firewall with Advanced Security design


After you finish reviewing the existing Windows Firewall with Advanced Security implementation goals and you determine which goals are important to your specific deployment, you can map those goals to a specific Windows Firewall with Advanced Security design.
> [!IMPORTANT]
> The first three designs presented in this guide build on each other to progress from simpler to more complex. Therefore during deployment, consider implementing them in the order presented. Each deployed design also provides a stable position from which to evaluate your progress, and to make sure that your goals are being met before you continue to the next design.

Use the following table to determine which Windows Firewall with Advanced Security design maps to the appropriate combination of Windows Firewall with Advanced Security implementation goals for your organization. This table refers only to the Windows Firewall with Advanced Security designs as described in this guide. However, you can create a hybrid or custom Windows Firewall with Advanced Security design by using any combination of the Windows Firewall with Advanced Security implementation goals to meet the needs of your organization.

| Deployment Goals | Basic Firewall Policy Design | Domain Isolation Policy Design | Server Isolation Policy Design | Certificate-based Isolation Policy Design |
| - |- | - | - | - |
| [Protect Devices from Unwanted Network Traffic](protect-devices-from-unwanted-network-traffic.md)| Yes| Yes| Yes| Yes| 
| [Restrict Access to Only Trusted Devices](restrict-access-to-only-trusted-devices.md) | -| Yes| Yes| Yes| 
| [Restrict Access to Only Specified Users or Devices](restrict-access-to-only-specified-users-or-devices.md)| -| -| Yes| Yes| 
| [Require Encryption When Accessing Sensitive Network Resources](require-encryption-when-accessing-sensitive-network-resources.md)| -| Optional| Optional| Optional| 

To examine details for a specific design, click the design title at the top of the column in the preceding table.

**Next:** [Basic Firewall Policy Design](basic-firewall-policy-design.md)
