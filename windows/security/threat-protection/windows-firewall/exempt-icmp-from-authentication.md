---
title: Exempt ICMP from Authentication (Windows)
description: Learn how to add exemptions for any network traffic that uses the ICMP protocol in Windows Defender Firewall with Advanced Security.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Exempt ICMP from Authentication


This procedure shows you how to add exemptions for any network traffic that uses the ICMP protocol.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

To exempt ICMP network traffic from authentication

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  On the main Windows Defender Firewall with Advanced Security page, click **Windows Defender Firewall Properties**.

3.  On the **IPsec settings** tab, change **Exempt ICMP from IPsec** to **Yes**, and then click **OK**.
