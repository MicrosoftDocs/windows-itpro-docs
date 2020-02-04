---
title: Checklist Implementing a Standalone Server Isolation Policy Design (Windows 10)
description: Checklist Implementing a Standalone Server Isolation Policy Design
ms.assetid: 50a997d8-f079-408c-8ac6-ecd02078ade3
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

# Checklist: Implementing a Standalone Server Isolation Policy Design

**Applies to**
-   Windows 10
-   Windows Server 2016

This checklist contains procedures for creating a server isolation policy design that is not part of an isolated domain. For the steps required to create an isolated server zone within an isolated domain, see [Checklist: Configuring Rules for an Isolated Server Zone](checklist-configuring-rules-for-an-isolated-server-zone.md).

This parent checklist includes cross-reference links to important concepts about the domain isolation policy design. It also contains links to subordinate checklists that will help you complete the tasks that are required to implement this design.

>**Note:**  Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist.

**Checklist: Implementing a standalone server isolation policy design**

| Task | Reference |
| - | - |
| Review important concepts and examples for the server isolation policy design to determine if this design meets your deployment goals and the needs of your organization.| [Identifying Your Windows Defender Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)<br/>[Server Isolation Policy Design](server-isolation-policy-design.md)<br/>[Server Isolation Policy Design Example](server-isolation-policy-design-example.md)<br/>[Planning Server Isolation Zones](planning-server-isolation-zones.md) |
| Create the GPOs and connection security rules for isolated servers.| [Checklist: Configuring Rules for Servers in a Standalone Isolated Server Zone](checklist-configuring-rules-for-servers-in-a-standalone-isolated-server-zone.md)| 
| Create the GPOs and connection security rules for the client devices that must connect to the isolated servers. | [Checklist: Creating Rules for Clients of a Standalone Isolated Server Zone](checklist-creating-rules-for-clients-of-a-standalone-isolated-server-zone.md)| 
| Verify that the connection security rules are protecting network traffic on your test devices. | [Verify That Network Traffic Is Authenticated](verify-that-network-traffic-is-authenticated.md)| 
| After you confirm that network traffic is authenticated by IPsec as expected, you can change authentication rules for the isolated server zone to require authentication instead of requesting it. | [Change Rules from Request to Require Mode](change-rules-from-request-to-require-mode.md)| 
| According to the testing and roll-out schedule in your design plan, add device accounts for the client devices to the membership group so that you can deploy the settings. | [Add Production Devices to the Membership Group for a Zone](add-production-devices-to-the-membership-group-for-a-zone.md) |
