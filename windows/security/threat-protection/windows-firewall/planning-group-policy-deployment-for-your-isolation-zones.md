---
title: Planning Group Policy Deployment for Your Isolation Zones (Windows)
description: Learn how to plan a group policy deployment for your isolation zones after you determine the best logical design for your isolation environment.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Planning Group Policy Deployment for Your Isolation Zones


After you've decided on the best logical design of your isolation environment for the network and device security requirements, you can start the implementation plan.

You have a list of isolation zones with the security requirements of each. For implementation, you must plan the groups that will hold the device accounts in each zone, the network access groups that will be used to determine who can access an isolated server, and the GPOs with the connection security and firewall rules to apply to corresponding groups. Finally you must determine how you'll ensure that the policies will only apply to the correct devices within each group.

-   [Planning Isolation Groups for the Zones](planning-isolation-groups-for-the-zones.md)

-   [Planning Network Access Groups](planning-network-access-groups.md)

-   [Planning the GPOs](planning-the-gpos.md)

-   [Planning GPO Deployment](planning-gpo-deployment.md)
