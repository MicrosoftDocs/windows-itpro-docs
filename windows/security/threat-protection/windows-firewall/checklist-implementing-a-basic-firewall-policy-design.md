---
title: Checklist Implementing a Basic Firewall Policy Design (Windows 10)
description: Checklist Implementing a Basic Firewall Policy Design
ms.assetid: 6caf0c1e-ac72-4f9d-a986-978b77fbbaa3
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

# Checklist: Implementing a Basic Firewall Policy Design

**Applies to**
-   Windows 10
-   Windows Server 2016

This parent checklist includes cross-reference links to important concepts about the basic firewall policy design. It also contains links to subordinate checklists that will help you complete the tasks that are required to implement this design.

>**Note:**  Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist.

The procedures in this section use the Group Policy MMC snap-in interfaces to configure the GPOs, but you can also use Windows PowerShell. For more info, see [Windows Defender Firewall with Advanced Security Administration with Windows PowerShell](windows-firewall-with-advanced-security-administration-with-windows-powershell.md).

 **Checklist: Implementing a basic firewall policy design**

| Task | Reference |
| - | - |
| Review important concepts and examples for the basic firewall policy design to determine if this design meets the needs of your organization. | [Identifying Your Windows Defender Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)<br/>[Basic Firewall Policy Design](basic-firewall-policy-design.md)<br/>[Firewall Policy Design Example](firewall-policy-design-example.md)<br/>[Planning Settings for a Basic Firewall Policy](planning-settings-for-a-basic-firewall-policy.md)| 
| Create the membership group and a GPO for each set of devices that require different firewall rules. Where GPOs will be similar, such as for Windows 10 and Windows Server 2016, create one GPO, configure it by using the tasks in this checklist, and then make a copy of the GPO for the other version of Windows. For example, create and configure the GPO for Windows 10, make a copy of it for Windows Server 2016, and then follow the steps in this checklist to make the few required changes to the copy. | [Checklist: Creating Group Policy Objects](checklist-creating-group-policy-objects.md)<br/>[Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)| 
| If you are working on a GPO that was copied from another, modify the group membership and WMI filters so that they are correct for the devices for which this GPO is intended.| [Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md)| 
| Configure the GPO with firewall default settings appropriate for your design.| [Checklist: Configuring Basic Firewall Settings](checklist-configuring-basic-firewall-settings.md)| 
| Create one or more inbound firewall rules to allow unsolicited inbound network traffic.| [Checklist: Creating Inbound Firewall Rules](checklist-creating-inbound-firewall-rules.md)| 
| Create one or more outbound firewall rules to block unwanted outbound network traffic. | [Checklist: Creating Outbound Firewall Rules](checklist-creating-outbound-firewall-rules.md)| 
| Link the GPO to the domain level of the Active Directory organizational unit hierarchy.| [Link the GPO to the Domain](link-the-gpo-to-the-domain.md)| 
| Add test devices to the membership group, and then confirm that the devices receive the firewall rules from the GPOs as expected.| [Add Test Devices to the Membership Group for a Zone](add-test-devices-to-the-membership-group-for-a-zone.md)|
| According to the testing and roll-out schedule in your design plan, add device accounts to the membership group to deploy the completed firewall policy settings to your devices. | [Add Production Devices to the Membership Group for a Zone](add-production-devices-to-the-membership-group-for-a-zone.md)| 
