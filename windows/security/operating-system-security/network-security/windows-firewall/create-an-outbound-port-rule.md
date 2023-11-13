---
title: Create an Outbound Port Rule 
description: Learn to block outbound traffic on a port by using the Group Policy Management MMC snap-in to create rules in Windows Defender Firewall with Advanced Security.
ms.topic: conceptual
ms.date: 09/07/2021
---

# Create an Outbound Port Rule with group policy

By default, Windows Firewall allows all outbound network traffic, unless it matches a rule that prohibits the traffic. To block outbound network traffic on a specified TCP or UDP port number, use the *Windows Defender Firewall with Advanced Security* node in the Group Policy Management console to create firewall rules. This type of rule blocks any outbound network traffic that matches the specified TCP or UDP port numbers.

> [!NOTE]
> To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

To create an outbound port rule

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md)
1. In the navigation pane, select **Outbound Rules**
1. Select **Action**, and then select **New rule**
1. On the **Rule Type** page of the New Outbound Rule wizard, select **Custom**, and then select **Next**

    > [!NOTE]
    > Although you can create rules by selecting **Program** or **Port**, those choices limit the number of pages presented by the wizard. If you select **Custom**, you see all of the pages, and have the most flexibility in creating your rules.

1. On the **Program** page, select **All programs**, and then select **Next**
1. On the **Protocol and Ports** page, select the protocol type that you want to block. To restrict the rule to a specified port number, you must select either **TCP** or **UDP**. Because this rule is an outbound rule, you typically configure only the remote port number

    If you select another protocol, then only packets whose protocol field in the IP header matches this rule are blocked by Windows Defender Firewall. Network traffic for protocols is allowed as long as other rules that match don't block it. To select a protocol by its number, select **Custom** from the list, and then type the number in the **Protocol number** box. When you've configured the protocols and ports, select **Next**,

1. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then select **Next**
1. On the **Action** page, select **Block the connection**, and then select **Next**
1. On the **Profile** page, select the network location types to which this rule applies, and then select **Next**
1. On the **Name** page, type a name and description for your rule, and then select **Finish**
