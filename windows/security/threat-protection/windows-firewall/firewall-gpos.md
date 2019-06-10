---
title: Firewall GPOs (Windows 10)
description: Firewall GPOs
ms.assetid: 720645fb-a01f-491e-8d05-c9c6d5e28033
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

# Firewall GPOs

**Applies to**
-   Windows 10
-   Windows Server 2016

All the devices on Woodgrove Bank's network that run Windows are part of the isolated domain, except domain controllers. To configure firewall rules, the GPO described in this section is linked to the domain container in the Active Directory OU hierarchy, and then filtered by using security group filters and WMI filters.

The GPO created for the example Woodgrove Bank scenario include the following:

-   [GPO\_DOMISO\_Firewall](gpo-domiso-firewall.md)
