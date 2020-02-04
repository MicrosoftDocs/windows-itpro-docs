---
title: Checklist Creating Group Policy Objects (Windows 10)
description: Checklist Creating Group Policy Objects
ms.assetid: e99bd6a4-34a7-47b5-9791-ae819977a559
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

# Checklist: Creating Group Policy Objects

**Applies to**
-   Windows 10
-   Windows Server 2016

To deploy firewall or IPsec settings or firewall or connection security rules, we recommend that you use Group Policy in AD DS. This section describes a tested, efficient method that requires some up-front work, but serves an administrator well in the long run by making GPO assignments as easy as dropping a device into a membership group.

The checklists for firewall, domain isolation, and server isolation include a link to this checklist.

## About membership groups

For most GPO deployment tasks, you must determine which devices must receive and apply which GPOs. Because different versions of Windows can support different settings and rules to achieve similar behavior, you might need multiple GPOs: one for each operating system that has settings different from the others to achieve the same result. For example, Windows 10, Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 use rules and settings that are incompatible with Windows 2000, Windows XP, and Windows Server 2003. Therefore, if your network included those older operating systems you would need to create a GPO for each set of operating systems that can share common settings. To deploy typical domain isolation settings and rules, you might have five different GPOs for the versions of Windows discussed in this guide. By following the procedures in this guide, you only need one membership group to manage all five GPOs. The membership group is identified in the security group filter for all five GPOs. To apply the settings to a device, you make that device's account a member of the membership group. WMI filters are used to ensure that the correct GPO is applied.

## About exclusion groups

A Windows Defender Firewall with Advanced Security design must often take into account domain-joined devices on the network that cannot or must not apply the rules and settings in the GPOs. Because these devices are typically fewer in number than the devices that must apply the GPO, it is easier to use the Domain Members group in the GPO membership group, and then place these exception devices into an exclusion group that is denied Apply Group Policy permissions on the GPO. Because deny permissions take precedence over allow permissions, a device that is a member of both the membership group and the exception group is prevented from applying the GPO. Devices typically found in a GPO exclusion group for domain isolation include the domain controllers, DHCP servers, and DNS servers.

You can also use a membership group for one zone as an exclusion group for another zone. For example, devices in the boundary and encryption zones are technically in the main domain isolation zone, but must apply only the GPO for their assigned role. To do this, the GPOs for the main isolation zone deny Apply Group Policy permissions to members of the boundary and encryption zones.

**Checklist: Creating Group Policy objects**

| Task | Reference |
| - | - |
| Review important concepts and examples for deploying GPOs in a way that best meets the needs of your organization.| [Identifying Your Windows Defender Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)<br/>[Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md)| 
| Create the membership group in AD DS that will be used to contain device accounts that must receive the GPO.<br/>If some devices in the membership group are running an operating system that does not support WMI filters, such as Windows 2000, create an exclusion group to contain the device accounts for the devices that cannot be blocked by using a WMI filter.| [Create a Group Account in Active Directory](create-a-group-account-in-active-directory.md)|
| Create a GPO for each version of Windows that has different implementation requirements.| [Create a Group Policy Object](create-a-group-policy-object.md) |
| Create security group filters to limit the GPO to only devices that are members of the membership group and to exclude devices that are members of the exclusion group.|[Assign Security Group Filters to the GPO](assign-security-group-filters-to-the-gpo.md) |
| Create WMI filters to limit each GPO to only the devices that match the criteria in the filter.| [Create WMI Filters for the GPO](create-wmi-filters-for-the-gpo.md) |
| If you are working on a GPO that was copied from another, modify the group memberships and WMI filters so that they are correct for the new zone or version of Windows for which this GPO is intended.|[Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md) |
| Link the GPO to the domain level of the Active Directory organizational unit hierarchy.| [Link the GPO to the Domain](link-the-gpo-to-the-domain.md) |
| Before adding any rules or configuring the GPO, add a few test devices to the membership group, and make sure that the correct GPO is received and applied to each member of the group.| [Add Test Devices to the Membership Group for a Zone](add-test-devices-to-the-membership-group-for-a-zone.md) |
