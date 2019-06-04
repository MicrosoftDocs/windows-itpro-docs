---
title: Planning the GPOs (Windows 10)
description: Planning the GPOs
ms.assetid: 11949ca3-a11c-4a16-b297-0862432eb5b4
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

# Planning the GPOs

**Applies to**
-   Windows 10
-   Windows Server 2016

When you plan the GPOs for your different isolation zones, you must complete the layout of the required zones and their mappings to the groups that link the devices to the zones.

## General considerations

A few things to consider as you plan the GPOs:

-   Do not allow a device to be a member of more than one isolation zone. A device in more than one zone receives multiple and possibly contradictory GPOs. This can result in unexpected, and difficult to troubleshoot behavior.

    The examples in this guide show GPOs that are designed to prevent the requirement to belong to multiple zones.

-   Ensure that the IPsec algorithms you specify in your GPOs are compatible across all the versions of Windows. The same principle applies to the data integrity and encryption algorithms. We recommend that you include the more advanced algorithms when you have the option of selecting several in an ordered list. The devices will negotiate down from the top of their lists, selecting one that is configured on both devices.

-   The primary difference in your domain isolation GPOs is whether the rules request or require authentication.

    >**Caution:**  It is **critical** that you begin with all your GPOs set to request authentication instead of requiring it. Since the GPOs are delivered to the devices over time, applying a require policy to one device breaks its ability to communicate with another device that has not yet received its policy. Using request mode at the beginning enables devices to continue communicating by using plaintext connections if required. After you confirm that your devices are using IPsec where expected, you can schedule a conversion of the rules in the GPOs from requesting to requiring authentication, as required by each zone.

-   Windows Defender Firewall* in Windows Vista and Windows Server 2008 only support one network location profile at a time. If you add a second network adapter that is connected to a different network, or not connected at all, you could unintentionally change the profile that is currently active on the device. If your GPO specifies different firewall and connection security rules based on the current network location profile, the behavior of how the device handles network traffic will change accordingly. We recommend for stationary devices, such as desktops and servers, that you assign any rule for the device to all profiles. Apply GPOs that change rules per network location to devices that must move between networks, such as your portable devices. Consider creating a separate domain isolation GPO for your servers that uses the same settings as the GPO for the clients, except that the server GPO specifies the same rules for all network location profiles.

*Windows Defender Firewall is now called Windows Defender Firewall with Advanced Security in Windows 10.

   > [!NOTE]
   > Devices running Windows 7, Windows Server 2008 R2, and later support different network location types, and therefore profiles, for each network adapter at the same time. Each network adapter is assigned the network location appropriate for the network to which it is connected. Windows Defender Firewall then enforces only those rules that apply to that network type’s profile. So certain types of traffic are blocked when coming from a network adapter connected to a public network, but those same types might be permitted when coming from a private or domain network.

After considering these issues, document each GPO that you require, and the details about the connection security and firewall rules that it needs.

## Woodgrove Bank example GPOs

The Woodgrove Bank example uses the following set of GPOs to support its domain isolation requirements. This section only discusses the rules and settings for server and domain isolation. GPO settings that affect which devices receive the GPO, such as security group filtering and WMI filtering, are discussed in the [Planning GPO Deployment](planning-gpo-deployment.md) section.

In this section you can find information about the following:

-   [Firewall GPOs](firewall-gpos.md)

-   [Isolated Domain GPOs](isolated-domain-gpos.md)

-   [Boundary Zone GPOs](boundary-zone-gpos.md)

-   [Encryption Zone GPOs](encryption-zone-gpos.md)

-   [Server Isolation GPOs](server-isolation-gpos.md)
