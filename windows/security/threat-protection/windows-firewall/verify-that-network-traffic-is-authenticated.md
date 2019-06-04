---
title: Verify That Network Traffic Is Authenticated (Windows 10)
description: Verify That Network Traffic Is Authenticated
ms.assetid: cc1fb973-aedf-4074-ad4a-7376b24f03d2
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

# Verify That Network Traffic Is Authenticated

**Applies to**
-   Windows 10
-   Windows Server 2016

After you have configured your domain isolation rule to request, rather than require, authentication, you must confirm that the network traffic sent by the devices on the network is being protected by IPsec authentication as expected. If you switch your rules to require authentication before all of the devices have received and applied the correct GPOs, or if there are any errors in your rules, then communications on the network can fail. By first setting the rules to request authentication, any network connections that fail authentication can continue in clear text while you diagnose and troubleshoot.

In these procedures, you confirm that the rules you deployed are working correctly. Your next steps depend on which zone you are working on:

-   **Main domain isolation zone.** Before you convert your main domain isolation IPsec rule from request mode to require mode, you must make sure that the network traffic is protected according to your design. By configuring your rules to request and not require authentication at the beginning of operations, devices on the network can continue to communicate even when the main mode authentication or quick mode integrity and encryption rules are not working correctly. For example, if your encryption zone contains rules that require a certain encryption algorithm, but that algorithm is not included in a security method combination on the clients, then those clients cannot successfully negotiate a quick mode security association, and the server refuses to accept network traffic from the client. By first using request mode only, you have the opportunity to deploy your rules and then examine the network traffic to see if they are working as expected without risking a loss of communications.

-   **Boundary zone.** Confirming correct operation of IPsec is the last step if you are working on the boundary zone GPO. You do not convert the GPO to require mode at any time.

-   **Encryption zone.** Similar to the main isolation zone, after you confirm that the network traffic to zone members is properly authenticated and encrypted, you must convert your zone rules from request mode to require mode.

>**Note:**  In addition to the steps shown in this procedure, you can also use network traffic capture tools such as Microsoft Network Monitor, which can be downloaded from <https://go.microsoft.com/fwlink/?linkid=94770>. Network Monitor and similar tools allow you to capture, parse, and display the network packets received by the network adapter on your device. Current versions of these tools include full support for IPsec. They can identify encrypted network packets, but they cannot decrypt them.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

## To verify that network connections are authenticated by using the Windows Defender Firewall with Advanced Security console

1.  Open the Windows Defender Firewall with Advanced Security
console.

2.  In the navigation pane, expand **Monitoring**, and then click **Connection Security Rules**.

    The details pane displays the rules currently in effect on the device.

3.  **To display the Rule Source column**

    1.  In the **Actions** pane, click **View**, and then click **Add/Remove Columns**.

    2.  In the **Available columns** list, select **Rule Source**, and then click **Add**.

    3.  Use the **Move up** and **Move down** buttons to rearrange the order. Click **OK** when you are finished.

        It can take a few moments for the list to be refreshed with the newly added column.

4.  Examine the list for the rules from GPOs that you expect to be applied to this device.

    >**Note:**  If the rules do not appear in the list, then troubleshoot the GPO security group and the WMI filters that are applied to the GPO. Make sure that the local device is a member of the appropriate groups and meets the requirements of the WMI filters.
5.  In the navigation pane, expand **Security Associations**, and then click **Main Mode**.

    The current list of main mode associations that have been negotiated with other devices appears in the details column.

6.  Examine the list of main mode security associations for sessions between the local device and the remote device. Make sure that the **1st Authentication Method** and **2nd Authentication Method** columns contain expected values. If your rules specify only a first authentication method, then the **2nd Authentication Method** column displays **No authentication**. If you double-click the row, then the **Properties** dialog box appears with additional details about the security association.

7.  In the navigation pane, click **Quick mode**.

8.  Examine the list of quick mode security associations for sessions between the local device and the remote device. Make sure that the **AH Integrity**, **ESP integrity**, and **ESP Confidentiality** columns contain expected values.
