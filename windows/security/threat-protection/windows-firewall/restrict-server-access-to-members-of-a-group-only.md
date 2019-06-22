---
title: Restrict Server Access to Members of a Group Only (Windows 10)
description: Restrict Server Access to Members of a Group Only
ms.assetid: ea51c55b-e1ed-44b4-82e3-3c4287a8628b
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

# Restrict Server Access to Members of a Group Only

**Applies to**
-   Windows 10
-   Windows Server 2016

After you have configured the IPsec connection security rules that force client devices to authenticate their connections to the isolated server, you must configure the rules that restrict access to only those devices or users who have been identified through the authentication process as members of the isolated server’s access group.

In this topic:

-   [Create a firewall rule to access isolated servers running Windows Server 2008 or later](#to-create-a-firewall-rule-that-grants-access-to-an-isolated-server)

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

## To create a firewall rule that grants access to an isolated server

1.  Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md). You must edit the GPO that applies settings to servers in the isolated server zone.

2.  In the navigation pane, right-click **Inbound Rules**, and then click **New Rule**.

3.  On the **Rule Type** page, click **Custom**, and then click **Next**.

4.  If you must restrict access to a single network program, then you can select **This program path**, and specify the program or service to which to grant access. Otherwise, click **All programs**, and then click **Next**.

5.  If you must restrict access to only some TCP or UDP port numbers, then enter the port numbers on the **Protocol and Ports** page. Otherwise, set **Protocol type** to **Any**, and then click **Next**.

6.  On the **Scope** page, select **Any IP address** for both local and remote addresses, and then click **Next**.

7.  On the **Action** page, click **Allow the connection if it is secure**. If required by your design, you can also click **Customize** and select **Require the connections to be encrypted**. Click **Next**.

8.  On the **Users and Computers** page, select the check box for the type of accounts (computer or user) you want to allow, click **Add**, and then enter the group account that contains the device and user accounts permitted to access the server.
