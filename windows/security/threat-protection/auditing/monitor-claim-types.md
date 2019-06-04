---
title: Monitor claim types (Windows 10)
description: This topic for the IT professional describes how to monitor changes to claim types that are associated with dynamic access control when you are using advanced security auditing options.
ms.assetid: 426084da-4eef-44af-aeec-e7ab4d4e2439
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
ms.date: 04/19/2017
---

# Monitor claim types

**Applies to**
-   Windows 10

This topic for the IT professional describes how to monitor changes to claim types that are associated with dynamic access control when you are using advanced security auditing options.

Claim types are one of the basic building blocks of Dynamic Access Control. Claim types can include attributes such as the departments in an organization or the levels of security clearance that apply to classes of users. You can use security auditing to track whether claims are added, modified, enabled, disabled, or deleted.

Use the following procedures to configure settings to monitor changes to claim types in AD DS. These procedures assume that you have configured and deployed Dynamic Access Control, including central access policies, claims, and other components, in your network. If you have not yet deployed Dynamic
Access Control in your network, see [Deploy a Central Access Policy (Demonstration Steps)](https://technet.microsoft.com/library/hh846167.aspx).

>**Note:**  Your server might function differently based on the version and edition of the operating system that is installed, your account permissions, and your menu settings.
 
**To configure settings to monitor changes to claim types**

1.  Sign in to your domain controller by using domain administrator credential.
2.  In Server Manager, point to **Tools**, and then click **Group Policy Management**.
3.  In the console tree, right-click the default domain controller Group Policy Object, and then click **Edit**.
4.  Double-click **Computer Configuration**, click **Security Settings**, expand **Advanced Audit Policy Configuration**, expand **System Audit Policies**, click **DS Access**, and then double-click **Audit directory service changes**.
5.  Select the **Configure the following audit events** check box, select the **Success** check box (andthe **Failure** check box, if desired), and then click **OK**.

After you configure settings to monitor changes to claim types in AD DS, verify that the changes are being monitored.

**To verify that changes to claim types are monitored**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  Open the Active Directory Administrative Center.
3.  Under **Dynamic Access Control**, right-click **Claim Types**, and then click **Properties**.
4.  Click the **Security** tab, click **Advanced** to open the **Advanced Security Settings** dialog box, and then click the **Auditing** tab.
5.  Click **Add**, add a security auditing setting for the container, and then close all the Security properties dialog boxes.
6.  In the **Claim Types** container, add a new claim type or select an existing claim type. In the **Tasks** pane, click **Properties**, and then change one or more attributes.

    Click **OK**, and then close the Active Directory Administrative Center.

7.  Open Event Viewer on this domain controller, expand **Windows Logs**, and select the **Security** log.

    Look for event 5137. Key information to look for includes the name of the new attribute that was added, the type of claim that was created, and the user who created the claim.

### Related resource

- [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md)
