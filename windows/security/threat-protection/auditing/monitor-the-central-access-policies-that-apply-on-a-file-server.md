---
title: Monitor the central access policies that apply on a file server (Windows 10)
description: This topic for the IT professional describes how to monitor changes to the central access policies that apply to a file server when using advanced security auditing options to monitor dynamic access control objects.
ms.assetid: 126b051e-c20d-41f1-b42f-6cff24dcf20c
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

# Monitor the central access policies that apply on a file server

**Applies to**
-   Windows 10

This topic for the IT professional describes how to monitor changes to the central access policies that apply to a file server when using advanced security auditing options to monitor dynamic access control objects. Central access policies are created on a domain controller and then applied to file servers through Group Policy management.

Use the following procedures to configure and verify security auditing settings that are used to monitor changes to the set of central access policies on a file server. The following procedures assume that you have configured and deployed dynamic access control, including central access policies, and claims in your network. If you have not yet deployed dynamic access control in your network, see [Deploy a Central Access Policy (Demonstration Steps)](https://technet.microsoft.com/library/hh846167.aspx).

**To configure settings to monitor changes to central access policies**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  In Server Manager, point to **Tools**, and then click **Group Policy Management**.
3.  In the console tree, right-click the flexible access Group Policy Object, and then click **Edit**.
4.  Double-click **Computer Configuration**, double-click **Security Settings**, double-click **Advanced Audit Policy Configuration**, double-click **Policy Change**, and then double-click **Other Policy Change Events**.

    >**Note:**  This policy setting monitors policy changes that might not be captured otherwise, such as central access policy changes or trusted platform module configuration changes.
     
5.  Select the **Configure the following audit events** check box, select the **Success** check box (and the **Failure** check box, if desired), and then click **OK**.

After you modify the central access policies on the domain controller, verify that the changes have been applied to the file server and that the proper events are logged.

**To verify changes to the central access policies**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  Open the Group Policy Management Console.
3.  Right-click **Default domain policy**, and then click **Edit**.
4.  Double-click **Computer Configuration**, double-click **Policies**, and then double-click **Windows Settings**.
5.  Double-click **Security Settings**, right-click **File system**, and then click **Manage CAPs**.
6.  In the wizard that appears, follow the instructions to add a new central access policy (CAP), and then click **OK**.
7.  Use local administrator credentials to sign in to the server that hosts resources that are subject to the central access policies you changed.
8.  Press the Windows key + R, then type **cmd** to open a Command Prompt window.

    >**Note:**  If the User Account Control dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.
     
9.  Type **gpupdate /force**, and press ENTER.
10. In Server Manager, click **Tools**, and then click **Event Viewer**.
11. Expand **Windows Logs**, and then click **Security**. Verify that event 4819 appears in the security log.

## Related resource

- [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md)
