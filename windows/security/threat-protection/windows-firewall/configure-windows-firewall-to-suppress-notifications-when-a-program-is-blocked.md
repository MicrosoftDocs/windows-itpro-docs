---
title: Configure Windows Defender Firewall with Advanced Security to Suppress Notifications When a Program is Blocked (Windows 10)
description: Configure Windows Defender Firewall with Advanced Security to suppress notifications when a program is Bbocked
ms.assetid: b7665d1d-f4d2-4b5a-befc-8b6bd940f69b
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

# Configure Windows Defender Firewall with Advanced Security to Suppress Notifications When a Program Is Blocked

**Applies to**
-   Windows 10
-   Windows Server 2016

To configure Windows Defender Firewall with Advanced Security to suppress the display of a notification when it blocks a program that tries to listen for network traffic and to prohibit locally defined rules, use the Windows Defender Firewall with Advanced Security node in the Group Policy Management console.

>**Caution:**  If you choose to disable alerts and prohibit locally defined rules, then you must create firewall rules that allow your users’ programs to send and receive the required network traffic. If a firewall rule is missing, then the user does not receive any kind of warning, the network traffic is silently blocked, and the program might fail.

We recommend that you do not enable these settings until you have created and tested the required rules.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

## To configure Windows Defender Firewall to suppress the display of a notification for a blocked program and to ignore locally defined rules

1.  Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the details pane, in the **Overview** section, click **Windows Defender Firewall Properties**.

3.  For each network location type (Domain, Private, Public), perform the following steps.

    1.  Click the tab that corresponds to the network location type.

    2.  Under **Settings**, click **Customize**.

    3.  Under **Firewall settings**, change **Display a notification** to **No**.

    4.  Under **Rule merging**, change **Apply local firewall rules** to **No**.

    5.  Although a connection security rule is not a firewall setting, you can also use this tab to prohibit locally defined connection security rules if you are planning to deploy IPsec rules as part of a server or domain isolation environment. Under **Rule merging**, change **Apply local connection security rules** to **No**.

    6.  Click **OK** twice.
