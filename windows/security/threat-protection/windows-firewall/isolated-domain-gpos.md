---
title: Isolated Domain GPOs (Windows 10)
description: Isolated Domain GPOs
ms.assetid: e254ce4a-18c6-4868-8179-4078d9de215f
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

# Isolated Domain GPOs

**Applies to**
-   Windows 10
-   Windows Server 2016

All of the devices in the isolated domain are added to the group CG\_DOMISO\_IsolatedDomain. You must create multiple GPOs to align with this group, one for each Windows operating system that must have different rules or settings to implement the basic isolated domain functionality that you have in your isolated domain. This group is granted Read and Apply Group Policy permissions on all the GPOs described in this section.

Each GPO has a security group filter that prevents the GPO from applying to members of the group GP\_DOMISO\_No\_IPsec. A WMI filter is attached to each GPO to ensure that the GPO is applied to only the specified version of Windows. For more information, see the [Planning GPO Deployment](planning-gpo-deployment.md) section.

The GPOs created for the Woodgrove Bank isolated domain include the following:

-   [GPO\_DOMISO\_IsolatedDomain\_Clients](gpo-domiso-isolateddomain-clients.md)

-   [GPO\_DOMISO\_IsolatedDomain\_Servers](gpo-domiso-isolateddomain-servers.md)
