---
title: Exempt ICMP from Authentication (Windows)
description: Learn how to add exemptions for any network traffic that uses the ICMP protocol in Windows Defender Firewall with Advanced Security.
ms.assetid: c086c715-8d0c-4eb5-9ea7-2f7635a55548
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

# Exempt ICMP from Authentication

**Applies to**
-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

This procedure shows you how to add exemptions for any network traffic that uses the ICMP protocol.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

To exempt ICMP network traffic from authentication

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  On the main Windows Defender Firewall with Advanced Security page, click **Windows Defender Firewall Properties**.

3.  On the **IPsec settings** tab, change **Exempt ICMP from IPsec** to **Yes**, and then click **OK**.
