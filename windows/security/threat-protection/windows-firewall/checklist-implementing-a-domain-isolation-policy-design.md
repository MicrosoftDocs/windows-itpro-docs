---
title: Checklist Implementing a Domain Isolation Policy Design (Windows 10)
description: Checklist Implementing a Domain Isolation Policy Design
ms.assetid: 76586eb3-c13c-4d71-812f-76bff200fc20
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

# Checklist: Implementing a Domain Isolation Policy Design

**Applies to**
-   Windows 10
-   Windows Server 2016

This parent checklist includes cross-reference links to important concepts about the domain isolation policy design. It also contains links to subordinate checklists that will help you complete the tasks that are required to implement this design.

>**Note:**  Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist.

The procedures in this section use the Group Policy MMC snap-ins to configure the GPOs, but you can also use Windows PowerShell to configure GPOs. For more info, see [Windows Defender Firewall with Advanced Security Administration with Windows PowerShell](windows-firewall-with-advanced-security-administration-with-windows-powershell.md).

**Checklist: Implementing a domain isolation policy design**

| Task | Reference |
| - | - |
| Review important concepts and examples for the domain isolation policy design, determine your Windows Defender Firewall with Advanced Security deployment goals, and customize this design to meet the needs of your organization.| [Identifying Your Windows Defender Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)<br/>[Domain Isolation Policy Design](domain-isolation-policy-design.md)<br/>[Domain Isolation Policy Design Example](domain-isolation-policy-design-example.md)<br/>[Planning Domain Isolation Zones](planning-domain-isolation-zones.md) |
| Create the GPOs and connection security rules for the isolated domain.| [Checklist: Configuring Rules for the Isolated Domain](checklist-configuring-rules-for-the-isolated-domain.md)| 
| Create the GPOs and connection security rules for the boundary zone.| [Checklist: Configuring Rules for the Boundary Zone](checklist-configuring-rules-for-the-boundary-zone.md)| 
| Create the GPOs and connection security rules for the encryption zone.| [Checklist: Configuring Rules for the Encryption Zone](checklist-configuring-rules-for-the-encryption-zone.md)| 
| Create the GPOs and connection security rules for the isolated server zone.| [Checklist: Configuring Rules for an Isolated Server Zone](checklist-configuring-rules-for-an-isolated-server-zone.md)| 
| According to the testing and roll-out schedule in your design plan, add computer accounts to the membership group to deploy rules and settings to your computers.| [Add Production Devices to the Membership Group for a Zone](add-production-devices-to-the-membership-group-for-a-zone.md)| 
| After you confirm that network traffic is authenticated by IPsec, you can change authentication rules for the isolated domain and encryption zone from request to require mode.| [Change Rules from Request to Require Mode](change-rules-from-request-to-require-mode.md)| 
