---
title: Checklist Configuring Rules for the Boundary Zone (Windows)
description: Use these tasks to configure connection security rules and IPsec settings in your GPOs to implement the boundary zone in an isolated domain.
ms.assetid: 25fe0197-de5a-4b4c-bc44-c6f0620ea94b
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/07/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Checklist: Configuring Rules for the Boundary Zone


The following checklists include tasks for configuring connection security rules and IPsec settings in your GPOs to implement the boundary zone in an isolated domain.

Rules for the boundary zone are typically the same as those rules for the isolated domain, with the exception that the final rule is left to only request, not require, authentication.

**Checklist: Configuring boundary zone rules**

This checklist assumes that you've already created the GPO for the isolated domain as described in [Checklist: Implementing a Domain Isolation Policy Design](checklist-implementing-a-domain-isolation-policy-design.md). After you create a copy for the boundary zone, make sure that you don't change the rule from request authentication to require authentication when you create the other GPOs.

| Task | Reference |
| - | - |
| Make a copy of the domain isolation GPO for this version of Windows to serve as a starting point for the GPO for the boundary zone. Unlike the GPO for the main isolated domain zone, this copy isn't changed after deployment to require authentication.| [Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md) |
| If you're working on a copy of a GPO, modify the group memberships and WMI filters so that they're correct for the boundary zone and version of Windows for which this GPO is intended.| [Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md) |
| Link the GPO to the domain level of the Active Directory organizational unit hierarchy.| [Link the GPO to the Domain](link-the-gpo-to-the-domain.md)| 
| Add your test computers to the membership group for the boundary zone. Be sure to add at least one for each operating system supported by a different GPO in the group.| [Add Test Computers to the Membership Group for a Zone](add-test-devices-to-the-membership-group-for-a-zone.md)| 
| Verify that the connection security configuration is protecting network traffic with authentication when it can, and that unauthenticated traffic is accepted. | [Verify That Network Traffic Is Authenticated](verify-that-network-traffic-is-authenticated.md)| 
