---
title: Exempt ICMP from Authentication (Windows)
description: Learn how to add exemptions for any network traffic that uses the ICMP protocol in Windows Defender Firewall with Advanced Security.
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

# Exempt ICMP from Authentication


This procedure shows you how to add exemptions for any network traffic that uses the ICMP protocol.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

To exempt ICMP network traffic from authentication

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  On the main Windows Defender Firewall with Advanced Security page, click **Windows Defender Firewall Properties**.

3.  On the **IPsec settings** tab, change **Exempt ICMP from IPsec** to **Yes**, and then click **OK**.
