---
title: Create an Outbound Port Rule (Windows 10)
description: Create an Outbound Port Rule
ms.assetid: 59062b91-756b-42ea-8f2a-832f05d77ddf
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

# Create an Outbound Port Rule

**Applies to**
-   Windows 10
-   Windows Server 2016

By default, Windows Defender Firewall allows all outbound network traffic unless it matches a rule that prohibits the traffic. To block outbound network traffic on a specified TCP or UDP port number, use the Windows Defender Firewall with Advanced Security node in the Group Policy Management console to create firewall rules. This type of rule blocks any outbound network traffic that matches the specified TCP or UDP port numbers.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

To create an outbound port rule

1.  Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Outbound Rules**.

3.  Click **Action**, and then click **New rule**.

4.  On the **Rule Type** page of the New Outbound Rule wizard, click **Custom**, and then click **Next**.

    >**Note:**  Although you can create rules by selecting **Program** or **Port**, those choices limit the number of pages presented by the wizard. If you select **Custom**, you see all of the pages, and have the most flexibility in creating your rules.

5.  On the **Program** page, click **All programs**, and then click **Next**.

6.  On the **Protocol and Ports** page, select the protocol type that you want to block. To restrict the rule to a specified port number, you must select either **TCP** or **UDP**. Because this is an outbound rule, you typically configure only the remote port number.

    If you select another protocol, then only packets whose protocol field in the IP header match this rule are blocked by Windows Defender Firewall. Network traffic for protocols is allowed as long as other rules that match do not block it.

    To select a protocol by its number, select **Custom** from the list, and then type the number in the **Protocol number** box.

    When you have configured the protocols and ports, click **Next**.

7.  On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**.

8.  On the **Action** page, select **Block the connection**, and then click **Next**.

9.  On the **Profile** page, select the network location types to which this rule applies, and then click **Next**.

10. On the **Name** page, type a name and description for your rule, and then click **Finish**.
