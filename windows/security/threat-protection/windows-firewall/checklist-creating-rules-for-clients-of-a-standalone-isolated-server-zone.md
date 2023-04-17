---
title: Create Rules for Standalone Isolated Server Zone Clients (Windows)
description: Checklist for when creating rules for clients of a Standalone Isolated Server Zone
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/07/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Checklist: Creating Rules for Clients of a Standalone Isolated Server Zone


This checklist includes tasks for configuring connection security rules and IPsec settings in the GPOs for client devices that must connect to servers in an isolated server zone.

**Checklist: Configuring isolated server zone client rules**

| Task | Reference |
| - | - |
| Create a GPO for the client devices that must connect to servers in the isolated server zone, and that are running one of the versions of Windows. After you've finished the tasks in this checklist, you can make a copy of it.| [Checklist: Creating Group Policy Objects](checklist-creating-group-policy-objects.md) <br/>[Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)| 
| To determine which devices receive the GPO, assign the NAG for the isolated servers to the security group filter for the GPO. Make sure that each GPO has the WMI filter for the correct version of Windows.| [Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md) |
| Configure IPsec to exempt all ICMP network traffic from IPsec protection. | [Exempt ICMP from Authentication](exempt-icmp-from-authentication.md)| 
| Create a rule that exempts all network traffic to and from devices on the exemption list from IPsec. | [Create an Authentication Exemption List Rule](create-an-authentication-exemption-list-rule.md)| 
| Configure the key exchange (main mode) security methods and algorithms to be used. | [Configure Key Exchange (Main Mode) Settings](configure-key-exchange-main-mode-settings.md)| 
| Configure the data protection (quick mode) algorithm combinations to be used. | [Configure Data Protection (Quick Mode) Settings](configure-data-protection-quick-mode-settings.md)| 
| Configure the authentication methods to be used. | [Configure Authentication Methods](configure-authentication-methods.md)| 
| Create a rule that requests authentication for network traffic. Because fallback-to-clear behavior in Windows Vista and Windows Server 2008 has no delay when communicating with devices that can't use IPsec, you can use the same any-to-any rule used in an isolated domain.| [Create an Authentication Request Rule](create-an-authentication-request-rule.md)| 
| Link the GPO to the domain level of the Active Directory organizational unit hierarchy. | [Link the GPO to the Domain](link-the-gpo-to-the-domain.md)| 
| Add your test devices to the NAG for the isolated server zone. Be sure to add at least one for each operating system supported by a different GPO in the group.| [Add Test Devices to the Membership Group for a Zone](add-test-devices-to-the-membership-group-for-a-zone.md)| 
