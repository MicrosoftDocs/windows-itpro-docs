---
title: Implementing Your Windows Defender Firewall with Advanced Security Design Plan (Windows)
description: Implementing Your Windows Defender Firewall with Advanced Security Design Plan
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

# Implementing Your Windows Defender Firewall with Advanced Security Design Plan


The following are important factors in the implementation of your Windows Defender Firewall design plan:

-   **Group Policy**. The Windows Defender Firewall with Advanced Security designs make extensive use of Group Policy deployed by Active Directory Domain Services (AD DS). A sound Group Policy infrastructure is required to successfully deploy the firewall and IPsec settings and rules to the devices on your network.

-   **Perimeter firewall**. Most organizations use a perimeter firewall to help protect the devices on the network from potentially malicious network traffic from outside of the organization's network boundaries. If you plan a deployment that includes a boundary zone to enable external devices to connect to devices in that zone, then you must allow that traffic through the perimeter firewall to the devices in the boundary zone.

-   **Devices running operating systems other than Windows**. If your network includes devices that aren't running the Windows operating system, then you must make sure that required communication with those devices isn't blocked by the restrictions put in place by your design. You must implement one of the following steps:

    -   Include those devices in the isolated domain or zone by adding certificate-based authentication to your design. Many other operating systems can participate in an isolated domain or isolated server scenario, as long as certificate-based authentication is used.

    -   Include the device in the authentication exemption list included in your design. You can choose this option if for any reason the device can't participate in the isolated domain design.

## How to implement your Windows Defender Firewall with Advanced Security design using this guide


The next step in implementing your design is to determine in what order each of the deployment steps must be performed. This guide uses checklists to help you accomplish the various deployment tasks that are required to implement your design plan. As the following diagram shows, checklists and subchecklists are used as necessary to provide the end-to-end procedure for deploying a design.

![wfas implementation.](images/wfas-implement.gif)

Use the following parent checklists in this section of the guide to become familiar with the deployment tasks for implementing your organization's Windows Defender Firewall with Advanced Security design.

-   [Checklist: Implementing a Basic Firewall Policy Design](checklist-implementing-a-basic-firewall-policy-design.md)

-   [Checklist: Implementing a Domain Isolation Policy Design](checklist-implementing-a-domain-isolation-policy-design.md)

-   [Checklist: Implementing a Standalone Server Isolation Policy Design](checklist-implementing-a-standalone-server-isolation-policy-design.md)

-   [Checklist: Implementing a Certificate-based Isolation Policy Design](checklist-implementing-a-certificate-based-isolation-policy-design.md)

The procedures in these checklists use the Group Policy MMC snap-in interfaces to configure firewall and connection security rules in GPOs, but you can also use Windows PowerShell. For more information, see [Windows Defender Firewall with Advanced Security Administration with Windows PowerShell](windows-firewall-with-advanced-security-administration-with-windows-powershell.md). This guide recommends using GPOs in a specific way to deploy the rules and settings for your design. For information about deploying your GPOs, see [Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md) and the checklist [Checklist: Creating Group Policy Objects](checklist-creating-group-policy-objects.md).
