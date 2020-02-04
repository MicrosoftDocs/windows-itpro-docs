---
title: Boundary Zone GPOs (Windows 10)
description: Boundary Zone GPOs
ms.assetid: 1ae66088-02c3-47e4-b7e8-74d0b8f8646e
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

# Boundary Zone GPOs

**Applies to**
-   Windows 10
-   Windows Server 2016

All the devices in the boundary zone are added to the group CG\_DOMISO\_Boundary. You must create multiple GPOs to align with this group, one for each operating system that you have in your boundary zone. This group is granted Read and Apply permissions in Group Policy on the GPOs described in this section.

>**Note:**  If you are designing GPOs for at least Windows Vista or Windows Server 2008, you can design your GPOs in nested groups. For example, you can make the boundary group a member of the isolated domain group, so that it receives the firewall and basic isolated domain settings through that nested membership, with only the changes supplied by the boundary zone GPO. For simplicity, this guide describes the techniques used to create the independent, non-layered policies. We recommend that you create and periodically run a script that compares the memberships of the groups that must be mutually exclusive and reports any devices that are incorrectly assigned to more than one group.

This means that you create a GPO for a boundary group for a specific operating system by copying and pasting the corresponding GPO for the isolated domain, and then modifying the new copy to provide the behavior required in the boundary zone.

The boundary zone GPOs discussed in this guide are only for server versions of Windows because client devices are not expected to participate in the boundary zone. If the need for one occurs, either create a new GPO for that version of Windows, or expand the WMI filter attached to one of the existing boundary zone GPOs to make it apply to the client version of Windows.

In the Woodgrove Bank example, only the GPO settings for a Web service on at least Windows Server 2008 are discussed.

-   [GPO\_DOMISO\_Boundary\_WS2008](gpo-domiso-boundary.md)
