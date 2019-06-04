---
title: Network List Manager policies (Windows 10)
description: Network List Manager policies are security settings that you can use to configure different aspects of how networks are listed and displayed on one device or on many devices.
ms.assetid: bd8109d4-b07c-4beb-a9a6-affae2ba2fda
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

# Network List Manager policies

**Applies to**
-   Windows 10

Network List Manager policies are security settings that you can use to configure different aspects of how networks are listed and displayed on one device or on many devices.

To configure Network List Manager Policies for one device, you can use the Microsoft Management Console (MMC) with the Group Policy Object Editor snap-in, and edit the local computer policy. The Network List Manager Policies are located at the following path in Group Policy Object Editor:
**Computer Configuration | Windows Settings | Security Settings | Network List Manager Policies**

To configure Network List Manager Policies for many computers, such as for all of the Domain Computers in an Active Directory domain, follow Group Policy documentation to learn how to edit the policies for the object that you require. The path to the Network List Manager Policies is the same as the path listed above.

### Policy settings for Network List Manager Policies

The following policy settings are provided for Network List Manager Policies. These policy settings are located in the details pane of the Group Policy Object Editor, in **Network Name**.

### Unidentified Networks

This policy setting allows you to configure the **Network Location**, including the location type and the user permissions, for networks that Windows cannot identify due to a network issue or a lack of identifiable characters in the network information received by the operating system from the 
network. A network location identifies the type of network that a computer is connected to and automatically sets the appropriate firewall settings for that location. You can configure the following items for this policy setting:

-   **Location type**. For this item, the following options are available:

    -   **Not configured**. If you select this option, this policy setting does not apply a location type to unidentified network connections.
    -   **Private**. If you select this option, this policy setting applies a location type of Private to unidentified network connections. A private network, such as a home or work network, is a location type that assumes that you trust the other computers on the network. Do not select this item if there is a possibility that an active, unidentified network is in a public place.

    -   **Public**. If you select this option, this policy setting applies a location type of Public to unidentified network connections. A public network, such as a wireless network at an airport or coffee shop, is a location type that assumes that you do not trust the other computers on the network.

-   **User permissions**. For this item, the following options are available:

    -   **Not configured**. If you select this option, this policy setting does not specify whether users can change the location for unidentified network connections.
    -   **User can change location**. If you select this option, this policy setting allows users to change an unidentified network connection location from Private to Public or from Public to Private.
    -   **User cannot change location**. If you select this option, this policy setting does not allow users to change the location of an unidentified network connection.

### Identifying Networks

This policy setting allows you to configure the **Network Location** for networks that are in a temporary state while Windows works to identify the network and location type. A network location identifies the type of network that a computer is connected to and automatically sets the appropriate firewall settings for that location. You can configure the following items for this policy setting:

-   **Location type**. For this item, the following options are available:

    -   **Not configured**. If you select this option, this policy setting does not apply a location type to network connections that are in the process of being identified by Windows.
    -   **Private**. If you select this option, this policy setting applies a location type of Private to network connections that are in the process of being identified. A private network, such as a home or work network, is a location type that assumes that you trust the other devices on the network. Do not select this item if there is a possibility that an active, unidentified network is in a public place.
    -   **Public**. If you select this option, this policy setting applies a location type of Public to network connections that are in the process of being identified by Windows. A public network, such as a wireless network at an airport or coffee shop, is a location type that assumes that you do not trust the other devices on the network.

### All Networks

This policy setting allows you to specify the **User Permissions** that control whether users can change the network name, location, or icon, for all networks to which the user connects. You can configure the following items for this policy setting:

-   **Network name**. For this item, the following options are available:

    -   **Not configured**. If you select this option, this policy setting does not specify whether users can change the network name for all network connections.
    -   **User can change name**. If you select this option, users can change the network name for all networks to which they connect.
    -   **User cannot change name**. If you select this option, users cannot change the network name for any networks to which they connect.

-   **Network location**. For this item, the following options are available:

    -   **Not configured**. If you select this option, this policy setting does not specify whether users can change the location for all network connections.
    -   **User can change location**. If you select this option, this policy setting allows users to change all network locations from Private to Public or from Public to Private.
    -   **User cannot change location**. If you select this option, this policy setting does not allow users to change the location for any networks to which they connect.

-   **Network icon**. For this item, the following options are available:

    -   **Not configured**. If you select this option, this policy setting does not specify whether users can change the network icon for all network connections.
    -   **User can change icon**. If you select this option, this policy setting allows users to change the network icon for all networks to which the user connects.
    -   **User cannot change icon**. If you select this option, this policy setting does not allow users to change the network icon for any networks to which the user connects.
