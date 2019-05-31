---
title: Create an Inbound Port Rule (Windows 10)
description: Create an Inbound Port Rule
ms.assetid: a7b6c6ca-32fa-46a9-a5df-a4e43147da9f
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

# Create an Inbound Port Rule

**Applies to**
-   Windows 10
-   Windows Server 2016

To allow inbound network traffic on only a specified TCP or UDP port number, use the Windows Defender Firewall 
with Advanced Security node in the Group Policy Management MMC snap-in to create firewall rules. This type of rule allows any program that listens on a specified TCP or UDP port to receive network traffic sent to that port.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

This topic describes how to create a standard port rule for a specified protocol or TCP or UDP port number. For other inbound port rule types, see:

-   [Create an Inbound ICMP Rule](create-an-inbound-icmp-rule.md)

-   [Create Inbound Rules to Support RPC](create-inbound-rules-to-support-rpc.md)

**To create an inbound port rule**

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security] (open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Inbound Rules**.

3.  Click **Action**, and then click **New rule**.

4.  On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**.

    >**Note:**  Although you can create rules by selecting **Program** or **Port**, those choices limit the number of pages presented by the wizard. If you select **Custom**, you see all of the pages, and have the most flexibility in creating your rules.

5.  On the **Program** page, click **All programs**, and then click **Next**.

    >**Note:**  This type of rule is often combined with a program or service rule. If you combine the rule types, you get a firewall rule that limits traffic to a specified port and allows the traffic only when the specified program is running. The specified program cannot receive network traffic on other ports, and other programs cannot receive network traffic on the specified port. If you choose to do this, follow the steps in the [Create an Inbound Program or Service Rule](create-an-inbound-program-or-service-rule.md) procedure in addition to the steps in this procedure to create a single rule that filters network traffic using both program and port criteria.

6.  On the **Protocol and Ports** page, select the protocol type that you want to allow. To restrict the rule to a specified port number, you must select either **TCP** or **UDP**. Because this is an incoming rule, you typically configure only the local port number.

    If you select another protocol, then only packets whose protocol field in the IP header match this rule are permitted through the firewall.

    To select a protocol by its number, select **Custom** from the list, and then type the number in the **Protocol number** box.

    When you have configured the protocols and ports, click **Next**.

7.  On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**.

8.  On the **Action** page, select **Allow the connection**, and then click **Next**.

9.  On the **Profile** page, select the network location types to which this rule applies, and then click **Next**.

    >**Note:**  If this GPO is targeted at server computers running Windows Server 2008 that never move, consider modifying the rules to apply to all network location type profiles. This prevents an unexpected change in the applied rules if the network location type changes due to the installation of a new network card or the disconnection of an existing network card’s cable. A disconnected network card is automatically assigned to the Public network location type.
   
10. On the **Name** page, type a name and description for your rule, and then click **Finish**.
