---
title: Firewall GPOs (Windows)
description: In this example, a Group Policy Object is linked to the domain container because the domain controllers are not part of the isolated domain.
ms.assetid: 720645fb-a01f-491e-8d05-c9c6d5e28033
ms.reviewer: 
ms.author: dansimp
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2021
ms.technology: mde
---

# Firewall GPOs

**Applies to**
-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

All the devices on Woodgrove Bank's network that run Windows are part of the isolated domain, except domain controllers. To configure firewall rules, the GPO described in this section is linked to the domain container in the Active Directory OU hierarchy, and then filtered by using security group filters and WMI filters.

The GPO created for the example Woodgrove Bank scenario includes [GPO\_DOMISO\_Firewall](gpo-domiso-firewall.md).
