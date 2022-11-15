---
title: Checklist Configuring Rules for the Encryption Zone (Windows)
description: Use these tasks to configure connection security rules and IPsec settings in your GPOs to implement the encryption zone in an isolated domain.
ms.assetid: 87b1787b-0c70-47a4-ae52-700bff505ea4
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

# Checklist: Configuring Rules for the Encryption Zone


This checklist includes tasks for configuring connection security rules and IPsec settings in your GPOs to implement the encryption zone in an isolated domain.

Rules for the encryption zone are typically the same as those rules for the isolated domain, with the exception that the main rule requires encryption in addition to authentication.

**Checklist: Configuring encryption zone rules**

This checklist assumes that you've already created the GPO for the isolated domain as described in [Checklist: Implementing a Domain Isolation Policy Design](checklist-implementing-a-domain-isolation-policy-design.md). You can then copy those GPOs for use with the encryption zone. After you create the copies, modify the main rule to require encryption in addition to the authentication required by the rest of the isolated domain.

| Task | Reference |
| - | - |
| Make a copy of the domain isolation GPOs to serve as a starting point for the GPOs for the encryption zone.| [Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)| 
| Modify the group memberships and WMI filters so that they're correct for the encryption zone and the version of Windows for which this GPO is intended. | [Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md) |
| Add the encryption requirements for the zone. | [Configure the Rules to Require Encryption](configure-the-rules-to-require-encryption.md)| 
| Link the GPO to the domain level of the Active Directory organizational unit hierarchy. | [Link the GPO to the Domain](link-the-gpo-to-the-domain.md)| 
| Add your test computers to the membership group for the encryption zone. Be sure to add at least one for each operating system supported by a different GPO in the group.| [Add Test Computers to the Membership Group for a Zone](add-test-devices-to-the-membership-group-for-a-zone.md)| 
| Verify that the connection security rules are protecting network traffic.| [Verify That Network Traffic Is Authenticated](verify-that-network-traffic-is-authenticated.md)| 
