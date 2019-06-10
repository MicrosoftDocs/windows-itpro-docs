---
title: Checklist Configuring Rules for an Isolated Server Zone (Windows 10)
description: Checklist Configuring Rules for an Isolated Server Zone
ms.assetid: 67c50a91-e71e-4f1e-a534-dad2582e311c
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

# Checklist: Configuring Rules for an Isolated Server Zone

**Applies to**
-   Windows 10
-   Windows Server 2016

The following checklists include tasks for configuring connection security rules and IPsec settings in your GPOs for servers in an isolated server zone that are part of an isolated domain. For information about creating a standalone isolated server zone that is not part of an isolated domain, see [Checklist: Implementing a Standalone Server Isolation Policy Design](checklist-implementing-a-standalone-server-isolation-policy-design.md).

In addition to requiring authentication and optionally encryption, servers in an isolated server zone can be accessed only by users or devices who are authenticated members of a network access group (NAG). If you include user accounts in the NAG, then the restrictions can still apply; they are just enforced at the application layer, rather than the IP layer.

Devices that are running at least Windows Vista and Windows Server 2008 can identify both devices and users in the NAG because IPsec in these versions of Windows supports AuthIP in addition to IKE. AuthIP adds support for user-based authentication.

The GPOs for an isolated server or group of servers are similar to those for the isolated domain itself or the encryption zone, if you require encryption to your isolated servers. This checklist refers you to procedures for creating rules as well as restrictions that allow only members of the NAG to connect to the server.

**Checklist: Configuring rules for isolated servers**

| Task | Reference |
| - | - |
| Create a GPO for the devices that need to have access restricted to the same set of client devices. If there are multiple servers and they run different versions of the Windows operating system, then start by creating the GPO for one version of Windows. After you have finished the tasks in this checklist and configured the GPO for that version of Windows, you can create a copy of it.<br/>Copy the GPO from the isolated domain or from the encryption zone to serve as a starting point. Where your copy already contains elements listed in the following checklist, review the relevant procedures and compare them to your copied GPO’s element to make sure it is constructed in a way that meets the needs of the server isolation zone. |[Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)| 
| Configure the security group filters and WMI filters on the GPO so that only members of the isolated server zone’s membership group that are running the specified version of Windows can read and apply it.| [Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md) |
| Configure IPsec to exempt all ICMP network traffic from IPsec protection. | [Exempt ICMP from Authentication](exempt-icmp-from-authentication.md)| 
| Configure the key exchange (main mode) security methods and algorithms to be used. | [Configure Key Exchange (Main Mode) Settings](configure-key-exchange-main-mode-settings.md)| 
| Configure the data protection (quick mode) algorithm combinations to be used. If you require encryption for the isolated server zone, then make sure that you choose only algorithm combinations that include encryption. | [Configure Data Protection (Quick Mode) Settings](configure-data-protection-quick-mode-settings.md)| 
| Configure the authentication methods to be used. | [Configure Authentication Methods](configure-authentication-methods.md)| 
| Create a rule that exempts all network traffic to and from devices on the exemption list from IPsec. | [Create an Authentication Exemption List Rule](create-an-authentication-exemption-list-rule.md)| 
| Create a rule that requests authentication for all network traffic.<br/>**Important:**  Just as in an isolated domain, do not set the rules to require authentication for inbound traffic until you have completed testing. That way, if the rules do not work as expected, communications are not affected by a failure to authenticate.| [Create an Authentication Request Rule](create-an-authentication-request-rule.md)| 
| Create the NAG to contain the device or user accounts that are allowed to access the servers in the isolated server zone. | [Create a Group Account in Active Directory](create-a-group-account-in-active-directory.md)| 
| Create a firewall rule that permits inbound network traffic only if authenticated as a member of the NAG. | [Restrict Server Access to Members of a Group Only](restrict-server-access-to-members-of-a-group-only.md)| 
| Link the GPO to the domain level of the Active Directory organizational unit hierarchy. | [Link the GPO to the Domain](link-the-gpo-to-the-domain.md)| 
| Add your test server to the membership group for the isolated server zone. Be sure to add at least one server for each operating system supported by a GPO in the group.| [Add Test Devices to the Membership Group for a Zone](add-test-devices-to-the-membership-group-for-a-zone.md) |

Do not change the rules for any of your zones to require authentication until all of the zones have been set up and are operating correctly.
