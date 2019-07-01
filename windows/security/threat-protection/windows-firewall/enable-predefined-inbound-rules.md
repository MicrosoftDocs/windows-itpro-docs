---
title: Enable Predefined Inbound Rules (Windows 10)
description: Enable Predefined Inbound Rules
ms.assetid: a4fff086-ae81-4c09-b828-18c6c9a937a7
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

# Enable Predefined Inbound Rules

**Applies to**
-   Windows 10
-   Windows Server 2016

Windows Defender Firewall with Advanced Security includes many predefined rules for common networking roles and functions. When you install a new server role on a device or enable a network feature on a client device, the installer typically enables the rules required for that role instead of creating new ones. When deploying firewall rules to the devices on the network, you can take advantage of these predefined rules instead of creating new ones. Doing this helps to ensure consistency and accuracy, because the rules have been thoroughly tested and are ready for use.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

To deploy predefined firewall rules that allow inbound network traffic for common network functions

1.  Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Inbound Rules**.

3.  Click **Action**, and then click **New rule**.

4.  On the **Rule Type** page of the New Inbound Rule Wizard, click **Predefined**, select the rule category from the list, and then click **Next**.

5.  On the **Predefined Rules** page, the list of rules defined in the group is displayed. By default, they are all selected. For rules that you do not want to deploy, clear the check boxes next to the rules, and then click **Next**.

6.  On the **Action** page, select **Allow the connection**, and then click **Finish**.
