---
title: Create Inbound Rules to Support RPC on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2 (Windows 10)
description: Create Inbound Rules to Support RPC on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2
ms.assetid: 0b001c2c-12c1-4a30-bb99-0c034d7e6150
author: brianlic-msft
---

# Create Inbound Rules to Support RPC on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2


To allow inbound remote procedure call (RPC) network traffic, use the Windows Firewall with Advanced Security node in the Group Policy Management MMC snap-in to create two firewall rules. The first rule allows incoming network packets on TCP port 135 to the RPC Endpoint Mapper service. The incoming traffic consists of requests to communicate with a specified network service. The RPC Endpoint Mapper replies with a dynamically-assigned port number that the client must use to communicate with the service. The second rule allows the network traffic that is sent to the dynamically-assigned port number. Using the two rules configured as described in this topic helps to protect your computer by allowing network traffic only from computers that have received RPC dynamic port redirection and to only those TCP port numbers assigned by the RPC Endpoint Mapper.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

This topic describes how to create rules that allow inbound RPC network traffic. For other inbound port rule types, see:

-   [Create an Inbound Port Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2](../p_server_archive/create-an-inbound-port-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-or-windows-server-2008-r2.md)

-   [Create an Inbound ICMP Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2](../p_server_archive/create-an-inbound-icmp-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-or-windows-server-2008-r2.md)

In this topic:

-   [To create a rule to allow inbound network traffic to the RPC Endpoint Mapper service](#bkmk-proc1)

-   [To create a rule to allow inbound network traffic to RPC-enabled network services](#bkmk-proc2)

## <a href="" id="bkmk-proc1"></a>


**To create a rule to allow inbound network traffic to the RPC Endpoint Mapper service**

1.  [Open the Group Policy Management Console to Windows Firewall with Advanced Security](../p_server_archive/open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Inbound Rules**.

3.  Click **Action**, and then click **New rule**.

4.  On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**.

5.  On the **Program** page, click **This Program Path**, and then type **%systemroot%\\system32\\svchost.exe**.

6.  Click **Customize**.

7.  In the **Customize Service Settings** dialog box, click **Apply to this service**, select **Remote Procedure Call (RPC)** with a short name of **RpcSs**, click **OK**, and then click **Next**.

8.  On the warning about Windows service-hardening rules, click **Yes**.

9.  On the **Protocol and Ports** dialog box, for **Protocol type**, select **TCP**.

10. For **Local port**, select **RPC Endpoint Mapper**, and then click **Next**.

11. On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**.

12. On the **Action** page, select **Allow the connection**, and then click **Next**.

13. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**.

    **Note**  
    If this GPO is targeted at server computers running Windows Server 2008 that never move, consider applying the rules to all network location type profiles. This prevents an unexpected change in the applied rules if the network location type changes due to the installation of a new network card or the disconnection of an existing network card’s cable. A disconnected network card is automatically assigned to the Public network location type.

     

14. On the **Name** page, type a name and description for your rule, and then click **Finish**.

## <a href="" id="bkmk-proc2"></a>


**To create a rule to allow inbound network traffic to RPC-enabled network services**

1.  On the same GPO you edited in the preceding procedure, click **Action**, and then click **New rule**.

2.  On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**.

3.  On the **Program** page, click **This Program Path**, and then type the path to the executable file that hosts the network service. Click **Customize**.

4.  In the **Customize Service Settings** dialog box, click **Apply to this service**, and then select the service that you want to allow. If the service does not appear in the list, then click **Apply to service with this service short name**, and then type the short name of the service in the text box.

5.  Click **OK**, and then click **Next**.

6.  On the **Protocol and Ports** dialog box, for **Protocol type**, select **TCP**.

7.  For **Local port**, select **RPC Dynamic Ports**, and then click **Next**.

8.  On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**.

9.  On the **Action** page, select **Allow the connection**, and then click **Next**.

10. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**.

    **Note**  
    If this GPO is targeted at server computers running Windows Server 2008 that never move, consider applying the rules to all network location type profiles. This prevents an unexpected change in the applied rules if the network location type changes due to the installation of a new network card or the disconnection of an existing network card’s cable. A disconnected network card is automatically assigned to the Public network location type.

     

11. On the **Name** page, type a name and description for your rule, and then click **Finish**.

If you arrived at this page by clicking a link in a checklist, use your browser’s **Back** button to return to the checklist.

 

 





