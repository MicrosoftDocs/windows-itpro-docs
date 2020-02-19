---
title: Create an Outbound Program or Service Rule (Windows 10)
description: Create an Outbound Program or Service Rule
ms.assetid: f71db4fb-0228-4df2-a95d-b9c056aa9311
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

# Create an Outbound Program or Service Rule

**Applies to**
-   Windows 10
-   Windows Server 2016

By default, Windows Defender Firewall allows all outbound network traffic unless it matches a rule that prohibits the traffic. To block outbound network traffic for a specified program or service, use the Windows Defender Firewall with Advanced Security node in the Group Policy Management console to create firewall rules. This type of rule prevents the program from sending any outbound network traffic on any port.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

To create an outbound firewall rule for a program or service

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Outbound Rules**.

3.  Click **Action**, and then click **New rule**.

4.  On the **Rule Type** page of the New Outbound Rule Wizard, click **Custom**, and then click **Next**.

    >**Note:**  Although you can create many rules by selecting **Program** or **Port**, those choices limit the number of pages presented by the wizard. If you select **Custom**, you see all of the pages, and have the most flexibility in creating your rules.

5.  On the **Program** page, click **This program path**.

6.  Type the path to the program in the text box. Use environment variables as appropriate to ensure that programs installed in different locations on different computers work correctly.

7.  Do one of the following:

    -   If the executable file contains a single program, click **Next**.

    -   If the executable file is a container for multiple services that must all be blocked from sending outbound network traffic, click **Customize**, select **Apply to services only**, click **OK**, and then click **Next**.

    -   If the executable file is a container for a single service or contains multiple services but the rule only applies to one of them, click **Customize**, select **Apply to this service**, and then select the service from the list. If the service does not appear in the list, then click **Apply to service with this service short name**, and type the short name for the service in the text box. Click **OK**, and then click **Next**.

8.  If you want the program to be allowed to send on some ports, but blocked from sending on others, then you can restrict the firewall rule to block only the specified ports or protocols. On the **Protocols and Ports** page, you can specify the port numbers or protocol numbers for the blocked traffic. If the program tries to send to or from a port number different from the one specified here, or by using a protocol number different from the one specified here, then the default outbound firewall behavior allows the traffic. For more information about the protocol and port options, see [Create an Outbound Port Rule](create-an-outbound-port-rule.md). When you have configured the protocol and port options, click **Next**.

9.  On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**.

10. On the **Action** page, select **Block the connection**, and then click **Next**.

11. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**.

12. On the **Name** page, type a name and description for your rule, and then click **Finish**.
