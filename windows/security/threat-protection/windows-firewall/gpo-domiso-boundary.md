---
title: GPO\_DOMISO\_Boundary (Windows 10)
description: GPO\_DOMISO\_Boundary
ms.assetid: ead3a510-c329-4c2a-9ad2-46a3b4975cfd
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

# GPO\_DOMISO\_Boundary

**Applies to**
-   Windows 10
-   Windows Server 2016

This GPO is authored by using the Windows Defender Firewall with Advanced Security interface in the Group Policy editing tools. Woodgrove Bank began by copying and pasting the GPO for the Windows Server 2008 version of the isolated domain GPO, and then renamed the copy to reflect its new purpose.

This GPO supports the ability for devices that are not part of the isolated domain to access specific servers that must be available to those untrusted devices. It is intended to only apply to server devices that are running at least Windows Server 2008.

## IPsec settings

The copied GPO includes and continues to use the IPsec settings that configure key exchange, main mode, and quick mode algorithms for the isolated domain when authentication can be used.

## Connection security rules


Rename the **Isolated Domain Rule** to **Boundary Zone Rule**. Change the authentication mode to **Request inbound and request outbound**. In this mode, the device uses authentication when it can, such as during communication with a member of the isolated domain. It also supports the "fall back to clear" ability of request mode when an untrusted device that is not part of the isolated domain connects.

## Registry settings


The boundary zone uses the same registry settings as the isolated domain to optimize IPsec operation. For more information, see the description of the registry settings in [Isolated Domain](isolated-domain.md).

## Firewall rules


Copy the firewall rules for the boundary zone from the GPO that contains the firewall rules for the isolated domain. Customize this copy, removing rules for services not needed on servers in this zone, and adding inbound rules to allow the network traffic for the services that are to be accessed by other devices. For example, Woodgrove Bank added a firewall rule to allow inbound network traffic to TCP port 80 for Web client requests.

Make sure that the GPO that contains firewall rules for the isolated domain does not also apply to the boundary zone to prevent overlapping, and possibly conflicting rules.

**Next: **[Encryption Zone GPOs](encryption-zone-gpos.md)
