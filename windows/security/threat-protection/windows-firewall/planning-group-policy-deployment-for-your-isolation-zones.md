---
title: Planning Group Policy Deployment for Your Isolation Zones (Windows 10)
description: Planning Group Policy Deployment for Your Isolation Zones
ms.assetid: ea7c0acd-af28-4347-9d4a-4801b470557c
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

# Planning Group Policy Deployment for Your Isolation Zones

**Applies to**
-   Windows 10
-   Windows Server 2016

After you have decided on the best logical design of your isolation environment for the network and device security requirements, you can start the implementation plan.

You have a list of isolation zones with the security requirements of each. For implementation, you must plan the groups that will hold the device accounts in each zone, the network access groups that will be used to determine who can access an isolated server, and the GPOs with the connection security and firewall rules to apply to corresponding groups. Finally you must determine how you will ensure that the policies will only apply to the correct devices within each group.

-   [Planning Isolation Groups for the Zones](planning-isolation-groups-for-the-zones.md)

-   [Planning Network Access Groups](planning-network-access-groups.md)

-   [Planning the GPOs](planning-the-gpos.md)

-   [Planning GPO Deployment](planning-gpo-deployment.md)
