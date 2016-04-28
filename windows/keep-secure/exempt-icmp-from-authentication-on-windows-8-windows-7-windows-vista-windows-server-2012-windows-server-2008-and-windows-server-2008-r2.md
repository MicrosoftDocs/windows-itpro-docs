---
title: Exempt ICMP from Authentication on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 (Windows 10)
description: Exempt ICMP from Authentication on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2
ms.assetid: c086c715-8d0c-4eb5-9ea7-2f7635a55548
author: brianlic-msft
---

# Exempt ICMP from Authentication on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2


This procedure shows you how to add exemptions for any network traffic that uses the ICMP protocol.

**Important**  
Because of its usefulness in troubleshooting network connectivity problems, we recommend that you exempt all ICMP network traffic from authentication requirements unless your network risk analysis indicates a need to protect this traffic.

 

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

**To exempt ICMP network traffic from authentication**

1.  [Open the Group Policy Management Console to Windows Firewall with Advanced Security](../p_server_archive/open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  On the main Windows Firewall with Advanced Security page, click **Windows Firewall Properties**.

3.  On the **IPsec settings** tab, change **Exempt ICMP from IPsec** to **Yes**, and then click **OK**.

If you arrived at this page by clicking a link in a checklist, use your browser’s **Back** button to return to the checklist.

 

 





