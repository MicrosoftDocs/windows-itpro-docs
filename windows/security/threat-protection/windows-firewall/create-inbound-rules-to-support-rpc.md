---
title: Create Inbound Rules to Support RPC (Windows 10)
description: Create Inbound Rules to Support RPC
ms.assetid: 0b001c2c-12c1-4a30-bb99-0c034d7e6150
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

# Create Inbound Rules to Support RPC

**Applies to**
-   Windows 10
-   Windows Server 2016

To allow inbound remote procedure call (RPC) network traffic, use the Windows Defender Firewall with Advanced Security node in the Group Policy Management console to create two firewall rules. The first rule allows incoming network packets on TCP port 135 to the RPC Endpoint Mapper service. The incoming traffic consists of requests to communicate with a specified network service. The RPC Endpoint Mapper replies with a dynamically-assigned port number that the client must use to communicate with the service. The second rule allows the network traffic that is sent to the dynamically-assigned port number. Using the two rules configured as described in this topic helps to protect your device by allowing network traffic only from devices that have received RPC dynamic port redirection and to only those TCP port numbers assigned by the RPC Endpoint Mapper.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

This topic describes how to create rules that allow inbound RPC network traffic. For other inbound port rule types, see:

-   [Create an Inbound Port Rule](create-an-inbound-port-rule.md)

-   [Create an Inbound ICMP Rule](create-an-inbound-icmp-rule.md)

In this topic:

-   [To create a rule to allow inbound network traffic to the RPC Endpoint Mapper service](#to-create-a-rule-to-allow-inbound-network-traffic-to-the-rpc-endpoint-mapper-service)

-   [To create a rule to allow inbound network traffic to RPC-enabled network services](#to-create-a-rule-to-allow-inbound-network-traffic-to-rpc-enabled-network-services)

## To create a rule to allow inbound network traffic to the RPC Endpoint Mapper service

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

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

14. On the **Name** page, type a name and description for your rule, and then click **Finish**.


## To create a rule to allow inbound network traffic to RPC-enabled network services

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

11. On the **Name** page, type a name and description for your rule, and then click **Finish**.
