---
title: Checklist Configuring Rules for Servers in a Standalone Isolated Server Zone (Windows 10)
description: Checklist Configuring Rules for Servers in a Standalone Isolated Server Zone
ms.assetid: ccc09d06-ef75-43b0-9c77-db06f2940955
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

# Checklist: Configuring Rules for Servers in a Standalone Isolated Server Zone

**Applies to**
-   Windows 10
-   Windows Server 2016

This checklist includes tasks for configuring connection security rules and IPsec settings in your GPOs for servers in a standalone isolated server zone that is not part of an isolated domain. In addition to requiring authentication and optionally encryption, servers in a server isolation zone are accessible only by users or devices that are authenticated as members of a network access group (NAG). The GPOs described here apply only to the isolated servers, not to the client devices that connect to them. For the GPOs for the client devices, see [Checklist: Creating Rules for Clients of a Standalone Isolated Server Zone](checklist-creating-rules-for-clients-of-a-standalone-isolated-server-zone.md).

The GPOs for isolated servers are similar to those for an isolated domain. This checklist refers you to those procedures for the creation of some of the rules. The other procedures in this checklist are for creating the restrictions that allow only members of the server access group to connect to the server.

**Checklist: Configuring rules for isolated servers**

| Task | Reference |
| - | - |
| Create a GPO for the devices that need to have access restricted to the same set of client devices. If there are multiple servers running different versions of the Windows operating system, start by creating the GPO for one version of Windows. After you have finished the tasks in this checklist and configured the GPO for that version of Windows, you can create a copy of it. | [Checklist: Creating Group Policy Objects](checklist-creating-group-policy-objects.md) <br/>[Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)| 
| If you are working on a copy of a GPO, modify the group memberships and WMI filters so that they are correct for the devices for which this GPO is intended. | [Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md) |
| Configure IPsec to exempt all ICMP network traffic from IPsec protection. | [Exempt ICMP from Authentication](exempt-icmp-from-authentication.md)| 
| Create a rule that exempts all network traffic to and from devices on the exemption list from IPsec. | [Create an Authentication Exemption List Rule](create-an-authentication-exemption-list-rule.md) |
| Configure the key exchange (main mode) security methods and algorithms to be used. | [Configure Key Exchange (Main Mode) Settings](configure-key-exchange-main-mode-settings.md)| 
| Configure the data protection (quick mode) algorithm combinations to be used. | [Configure Data Protection (Quick Mode) Settings](configure-data-protection-quick-mode-settings.md)| 
| Configure the authentication methods to be used. This procedure sets the default settings for the device. If you want to set authentication on a per-rule basis, this procedure is optional.| [Configure Authentication Methods](configure-authentication-methods.md) |
| Create a rule that requests authentication for all inbound network traffic. <br/><br/>**Important:**  Just as in an isolated domain, do not set the rules to require authentication until your testing is complete. That way, if the rules do not work as expected, communications are not affected by a failure to authenticate.| [Create an Authentication Request Rule](create-an-authentication-request-rule.md)| 
| If your design requires encryption in addition to authentication for access to the isolated servers, then modify the rule to require it. | [Configure the Rules to Require Encryption](configure-the-rules-to-require-encryption.md)| 
| Create the NAG to contain the device or user accounts that are allowed to access the isolated servers. If you have multiple groups of isolated servers that are accessed by different client devices, then create a NAG for each set of servers.| [Create a Group Account in Active Directory](create-a-group-account-in-active-directory.md) |
| Create a firewall rule that allows inbound network traffic only if it is authenticated from a user or device that is a member of the zone’s NAG.| [Restrict Server Access to Members of a Group Only](restrict-server-access-to-members-of-a-group-only.md)| 
| Link the GPO to the domain level of the Active Directory organizational unit hierarchy. | [Link the GPO to the Domain](link-the-gpo-to-the-domain.md)| 
| Add your test server to the membership group for the isolated server zone. Be sure to add at least one for each operating system supported by a different GPO in the group.| [Add Test Devices to the Membership Group for a Zone](add-test-devices-to-the-membership-group-for-a-zone.md)| 
 
Do not change the rules for any of your zones to require authentication until all zones have been set up and thoroughly tested.
