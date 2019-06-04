---
title: Checklist Configuring Rules for the Isolated Domain (Windows 10)
description: Checklist Configuring Rules for the Isolated Domain
ms.assetid: bfd2d29e-4011-40ec-a52e-a67d4af9748e
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
ms.date: 04/19/2017
---

# Checklist: Configuring Rules for the Isolated Domain

**Applies to**
-   Windows 10
-   Windows Server 2016

The following checklists include tasks for configuring connection security rules and IPsec settings in your GPOs to implement the main zone in the isolated domain.

**Checklist: Configuring isolated domain rules**

| Task | Reference |
| - | - |
| Create a GPO for the computers in the isolated domain running one of the operating systems. After you have finished the tasks in this checklist and configured the GPO for that version of Windows, you can create a copy of it.| [Checklist: Creating Group Policy Objects](checklist-creating-group-policy-objects.md)<br/>[Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)| 
| If you are working on a GPO that was copied from another GPO, modify the group memberships and WMI filters so that they are correct for the isolated domain zone and the version of Windows for which this GPO is intended. | [Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md) |
| Configure IPsec to exempt all ICMP network traffic from IPsec protection. | [Exempt ICMP from Authentication](exempt-icmp-from-authentication.md)| 
| Create a rule that exempts all network traffic to and from computers on the exemption list from IPsec. | [Create an Authentication Exemption List Rule](create-an-authentication-exemption-list-rule.md)| 
| Configure the key exchange (main mode) security methods and algorithms to be used. | [Configure Key Exchange (Main Mode) Settings](configure-key-exchange-main-mode-settings.md)| 
| Configure the data protection (quick mode) algorithm combinations to be used. | [Configure Data Protection (Quick Mode) Settings](configure-data-protection-quick-mode-settings.md)| 
| Configure the authentication methods to be used. | [Configure Authentication Methods](configure-authentication-methods.md)| 
| Create the rule that requests authentication for all inbound network traffic. | [Create an Authentication Request Rule](create-an-authentication-request-rule.md)| 
| Link the GPO to the domain level of the AD DS organizational unit hierarchy. | [Link the GPO to the Domain](link-the-gpo-to-the-domain.md)| 
| Add your test computers to the membership group for the isolated domain. Be sure to add at least one for each operating system supported by a different GPO in the group.| [Add Test Devices to the Membership Group for a Zone](add-test-devices-to-the-membership-group-for-a-zone.md)| 
| Verify that the connection security rules are protecting network traffic to and from the test computers. | [Verify That Network Traffic Is Authenticated](verify-that-network-traffic-is-authenticated.md)| 
 

Do not change the rules for any of your zones to require authentication until all of the zones have been set up and are operating correctly.
