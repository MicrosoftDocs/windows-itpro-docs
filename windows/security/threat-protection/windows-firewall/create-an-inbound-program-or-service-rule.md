---
title: Create an Inbound Program or Service Rule (Windows 10)
description: Create an Inbound Program or Service Rule
ms.assetid: 00b7fa60-7c64-4ba5-ba95-c542052834cf
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

# Create an Inbound Program or Service Rule

**Applies to**
-   Windows 10
-   Windows Server 2016

To allow inbound network traffic to a specified program or service, use the Windows Defender Firewall with Advanced Securitynode in the Group Policy Management MMC snap-in to create firewall rules. This type of rule allows the program to listen and receive inbound network traffic on any port.

>**Note:**  This type of rule is often combined with a program or service rule. If you combine the rule types, you get a firewall rule that limits traffic to a specified port and allows the traffic only when the specified program is running. The program cannot receive network traffic on other ports, and other programs cannot receive network traffic on the specified port. To combine the program and port rule types into a single rule, follow the steps in the [Create an Inbound Port Rule](create-an-inbound-port-rule.md) procedure in addition to the steps in this procedure.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

To create an inbound firewall rule for a program or service

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Inbound Rules**.

3.  Click **Action**, and then click **New rule**.

4.  On the **Rule Type** page of the New Inbound Rule Wizard, click **Custom**, and then click **Next**.

    >**Note:**  Although you can create rules by selecting **Program** or **Port**, those choices limit the number of pages presented by the wizard. If you select **Custom**, you see all of the pages, and have the most flexibility in creating your rules.

5.  On the **Program** page, click **This program path**.

6.  Type the path to the program in the text box. Use environment variables, where applicable, to ensure that programs installed in different locations on different computers work correctly.

7.  Do one of the following:

    -   If the executable file contains a single program, click **Next**.

    -   If the executable file is a container for multiple services that must all be allowed to receive inbound network traffic, click **Customize**, select **Apply to services only**, click **OK**, and then click **Next**.

    -   If the executable file is a container for a single service or contains multiple services but the rule only applies to one of them, click **Customize**, select **Apply to this service**, and then select the service from the list. If the service does not appear in the list, click **Apply to service with this service short name**, and then type the short name for the service in the text box. Click **OK**, and then click **Next**.

    **Important**  
    To use the **Apply to this service** or **Apply to service with this service short name** options, the service must be configured with a security identifier (SID) with a type of **RESTRICTED** or **UNRESTRICTED**. To check the SID type of a service, run the following command:

    **sc** **qsidtype** *&lt;ServiceName&gt;*

    If the result is **NONE**, then a firewall rule cannot be applied to that service.

    To set a SID type on a service, run the following command:

    **sc** **sidtype** *&lt;Type&gt; &lt;ServiceName&gt;*

    In the preceding command, the value of *&lt;Type&gt;* can be **UNRESTRICTED** or **RESTRICTED**. Although the command also permits the value of **NONE**, that setting means the service cannot be used in a firewall rule as described here. By default, most services in Windows are configured as **UNRESTRICTED**. If you change the SID type to **RESTRICTED**, the service might fail to start. We recommend that you change the SID type only on services that you want to use in firewall rules, and that you change the SID type to **UNRESTRICTED**.

8.  It is a best practice to restrict the firewall rule for the program to only the ports it needs to operate. On the **Protocols and Ports** page, you can specify the port numbers for the allowed traffic. If the program tries to listen on a port different from the one specified here, it is blocked. For more information about protocol and port options, see [Create an Inbound Port Rule](create-an-inbound-port-rule.md). After you have configured the protocol and port options, click **Next**.

9.  On the **Scope** page, you can specify that the rule applies only to network traffic to or from the IP addresses entered on this page. Configure as appropriate for your design, and then click **Next**.

10. On the **Action** page, select **Allow the connection**, and then click **Next**.

11. On the **Profile** page, select the network location types to which this rule applies, and then click **Next**.

12. On the **Name** page, type a name and description for your rule, and then click **Finish**.
