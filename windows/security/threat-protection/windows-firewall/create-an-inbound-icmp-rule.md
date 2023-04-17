---
title: Create an Inbound ICMP Rule (Windows)
description: Learn how to allow inbound ICMP traffic by using the Group Policy Management MMC snap-in to create rules in Windows Defender Firewall with Advanced Security.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/07/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Create an Inbound ICMP Rule


To allow inbound Internet Control Message Protocol (ICMP) network traffic, use the Windows Defender Firewall with Advanced Security node in the Group Policy Management MMC snap-in to create firewall rules. This type of rule allows ICMP requests and responses to be sent and received by computers on the network.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

This topic describes how to create a port rule that allows inbound ICMP network traffic. For other inbound port rule types, see:

-   [Create an Inbound Port Rule](create-an-inbound-port-rule.md)

-   [Create Inbound Rules to Support RPC](create-inbound-rules-to-support-rpc.md)

To create an inbound ICMP rule

1.  Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Inbound Rules**.

3.  Click **Action**, and then click **New rule**.

4.  On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**.

5.  On the **Program** page, click **All programs**, and then click **Next**.

6.  On the **Protocol and Ports** page, select **ICMPv4** or **ICMPv6** from the **Protocol type** list. If you use both IPv4 and IPv6 on your network, you must create a separate ICMP rule for each.

7.  Click **Customize**.

8.  In the **Customize ICMP Settings** dialog box, do one of the following:

    -   To allow all ICMP network traffic, click **All ICMP types**, and then click **OK**.

    -   To select one of the predefined ICMP types, click **Specific ICMP types**, and then select each type in the list that you want to allow. Click **OK**.

    -   To select an ICMP type that does not appear in the list, click **Specific ICMP types**, select the **Type** number from the list, select the **Code** number from the list, click **Add**, and then select the newly created entry from the list. Click **OK**

9.  Click **Next**.

10. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**.

11. On the **Action** page, select **Allow the connection**, and then click **Next**.

12. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**.

13. On the **Name** page, type a name and description for your rule, and then click **Finish**.
