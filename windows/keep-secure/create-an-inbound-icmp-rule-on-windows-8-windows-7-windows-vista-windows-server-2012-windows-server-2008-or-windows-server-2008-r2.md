---
title: Create an Inbound ICMP Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2 (Windows 10)
description: Create an Inbound ICMP Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2
ms.assetid: 267b940a-79d9-4322-b53b-81901e357344
author: brianlic-msft
---

# Create an Inbound ICMP Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2


To allow inbound Internet Control Message Protocol (ICMP) network traffic, use the Windows Firewall with Advanced Security node in the Group Policy Management MMC snap-in to create firewall rules. This type of rule allows ICMP requests and responses to be sent and received by computers on the network.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

This topic describes how to create a port rule that allows inbound ICMP network traffic. For other inbound port rule types, see:

-   [Create an Inbound Port Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2](../p_server_archive/create-an-inbound-port-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-or-windows-server-2008-r2.md)

-   [Create Inbound Rules to Support RPC on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2](../p_server_archive/create-inbound-rules-to-support-rpc-on-windows-8-windows-7--windows-vista-windows-server-2012-windows-server-2008-or-windows-server-2008-r2.md)

**To create an inbound ICMP rule**

1.  [Open the Group Policy Management Console to Windows Firewall with Advanced Security](../p_server_archive/open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

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

    **Note**  
    If this GPO is targeted at server computers running Windows Server 2008 that never move, consider modifying the rules to apply to all network location type profiles. This prevents an unexpected change in the applied rules if the network location type changes due to the installation of a new network card or the disconnection of an existing network card’s cable. A disconnected network card is automatically assigned to the Public network location type.

     

13. On the **Name** page, type a name and description for your rule, and then click **Finish**.

If you arrived at this page by clicking a link in a checklist, use your browser’s **Back** button to return to the checklist.

 

 





